unit Pinjaman;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Buttons;

type
  TFPinjaman = class(TForm)
    Label1: TLabel;
    edKodePinjaman: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    edKodeAnggota: TEdit;
    Label4: TLabel;
    edJumlah: TEdit;
    Label5: TLabel;
    edBunga: TEdit;
    Label6: TLabel;
    edTenor: TEdit;
    Label7: TLabel;
    cbNamaAnggota: TComboBox;
    dtTanggal: TDateTimePicker;
    Label8: TLabel;
    edCicilan: TEdit;
    Panel1: TPanel;
    btnBatal: TBitBtn;
    btnSimpan: TBitBtn;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    procedure FormShow(Sender: TObject);
    procedure cbNamaAnggotaChange(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure edJumlahChange(Sender: TObject);
    procedure edBungaChange(Sender: TObject);
    procedure edTenorChange(Sender: TObject);
  private
    { Private declarations }
    procedure LoadAnggota;
    procedure GenerateKodePinjaman;
    procedure HitungCicilan;
  public
    { Public declarations }
    IsEditMode: Boolean;
    KodePinjamanEdit: string;
  end;

var
  FPinjaman: TFPinjaman;

implementation

{$R *.dfm}

uses UDM;

procedure TFPinjaman.LoadAnggota;
begin
  cbNamaAnggota.Items.Clear;
  FUDM.Qtemp.SQL.Text := 'SELECT kode_anggota, nama FROM anggota';
  FUDM.Qtemp.Open;
  while not FUDM.Qtemp.Eof do
  begin
    cbNamaAnggota.Items.Add(FUDM.Qtemp.FieldByName('nama').AsString);
    FUDM.Qtemp.Next;
  end;
  FUDM.Qtemp.Close;
end;

procedure TFPinjaman.btnBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TFPinjaman.btnSimpanClick(Sender: TObject);
begin
  HitungCicilan;

  if IsEditMode then
  begin
    // UPDATE jika mode edit
    FUDM.Qtemp.SQL.Text :=
      'UPDATE pinjaman SET kode_anggota = :anggota, tanggal = :tgl, jumlah = :jumlah, tenor = :tenor, ' +
      'bunga = :bunga, cicilan = :cicilan WHERE kode_pinjaman = :kode';
  end
  else
  begin
    // INSERT jika mode tambah
    FUDM.Qtemp.SQL.Text :=
      'INSERT INTO pinjaman (kode_pinjaman, kode_anggota, tanggal, jumlah, tenor, bunga, cicilan, status_lunas) ' +
      'VALUES (:kode, :anggota, :tgl, :jumlah, :tenor, :bunga, :cicilan, ''Belum Lunas'')';
  end;

  FUDM.Qtemp.ParamByName('kode').AsString := edKodePinjaman.Text;
  FUDM.Qtemp.ParamByName('anggota').AsString := edKodeAnggota.Text;
  FUDM.Qtemp.ParamByName('tgl').AsDate := dtTanggal.Date;
  FUDM.Qtemp.ParamByName('jumlah').AsFloat := StrToFloatDef(edJumlah.Text, 0);
  FUDM.Qtemp.ParamByName('tenor').AsInteger := StrToIntDef(edTenor.Text, 0);
  FUDM.Qtemp.ParamByName('bunga').AsFloat := StrToFloatDef(edBunga.Text, 0);
  FUDM.Qtemp.ParamByName('cicilan').AsFloat := StrToFloatDef(StringReplace(edCicilan.Text, ',', '', [rfReplaceAll]), 0);
  FUDM.Qtemp.ExecSQL;

  ShowMessage('Data pinjaman berhasil disimpan.');
  Close;
end;

procedure TFPinjaman.cbNamaAnggotaChange(Sender: TObject);
begin
  FUDM.Qtemp.SQL.Text := 'SELECT kode_anggota FROM anggota WHERE nama = :nama';
  FUDM.Qtemp.ParamByName('nama').AsString := cbNamaAnggota.Text;
  FUDM.Qtemp.Open;
  edKodeAnggota.Text := FUDM.Qtemp.FieldByName('kode_anggota').AsString;
  FUDM.Qtemp.Close;
end;

procedure TFPinjaman.edBungaChange(Sender: TObject);
begin
  HitungCicilan;
end;

procedure TFPinjaman.edJumlahChange(Sender: TObject);
begin
  HitungCicilan;
end;

procedure TFPinjaman.edTenorChange(Sender: TObject);
begin
  HitungCicilan;
end;

procedure TFPinjaman.FormShow(Sender: TObject);
begin
  LoadAnggota;
  dtTanggal.Date := Date;

  if IsEditMode then
  begin
    // Tampilkan data pinjaman berdasarkan kode yang akan diedit
    FUDM.Qtemp.SQL.Text := 'SELECT * FROM pinjaman WHERE kode_pinjaman = :kode';
    FUDM.Qtemp.ParamByName('kode').AsString := KodePinjamanEdit;
    FUDM.Qtemp.Open;

    edKodePinjaman.Text := FUDM.Qtemp.FieldByName('kode_pinjaman').AsString;
    edKodeAnggota.Text := FUDM.Qtemp.FieldByName('kode_anggota').AsString;
    dtTanggal.Date := FUDM.Qtemp.FieldByName('tanggal').AsDateTime;
    edJumlah.Text := FUDM.Qtemp.FieldByName('jumlah').AsString;
    edTenor.Text := FUDM.Qtemp.FieldByName('tenor').AsString;
    edBunga.Text := FUDM.Qtemp.FieldByName('bunga').AsString;
    edCicilan.Text := FUDM.Qtemp.FieldByName('cicilan').AsString;

    // Cari nama anggota dari kode_anggota
    FUDM.Qtemp.SQL.Text := 'SELECT nama FROM anggota WHERE kode_anggota = :kode';
    FUDM.Qtemp.ParamByName('kode').AsString := edKodeAnggota.Text;
    FUDM.Qtemp.Open;
    cbNamaAnggota.Text := FUDM.Qtemp.FieldByName('nama').AsString;
    FUDM.Qtemp.Close;

    FUDM.Qtemp.Close;
    edKodePinjaman.Enabled := False; // Kode tidak bisa diubah saat edit
  end
  else
  begin
    GenerateKodePinjaman;
  end;
end;

procedure TFPinjaman.GenerateKodePinjaman;
var
  angka: Integer;
begin
  FUDM.Qtemp.SQL.Text := 'SELECT kode_pinjaman FROM pinjaman ORDER BY id_pinjaman DESC LIMIT 1';
  FUDM.Qtemp.Open;
  if not FUDM.Qtemp.IsEmpty then
    angka := StrToIntDef(Copy(FUDM.Qtemp.FieldByName('kode_pinjaman').AsString, 4, 3), 0) + 1
  else
    angka := 1;
  edKodePinjaman.Text := Format('PNJ%.3d', [angka]);
  FUDM.Qtemp.Close;
end;

procedure TFPinjaman.HitungCicilan;
var
  jumlahPinjaman, bungaTotal: Double;
  tenor: Integer;
begin
  jumlahPinjaman := StrToFloatDef(edJumlah.Text, 0);
  tenor := StrToIntDef(edTenor.Text, 1);
  bungaTotal := jumlahPinjaman * (StrToFloatDef(edBunga.Text, 0) / 100);
  edCicilan.Text := FloatToStr((jumlahPinjaman + bungaTotal) / tenor);
end;

end.
