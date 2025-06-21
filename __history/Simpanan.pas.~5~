unit Simpanan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.ComCtrls, Data.DB, Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids, Vcl.Menus;

type
  TFSimpanan = class(TForm)
    Label1: TLabel;
    edKodeSimpanan: TEdit;
    cbNamaAnggota: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    edKodeAnggota: TEdit;
    dtTanggal: TDateTimePicker;
    Label4: TLabel;
    Panel1: TPanel;
    btnBatal: TBitBtn;
    btnSimpan: TBitBtn;
    Label5: TLabel;
    edTotal: TEdit;
    DBGrid1: TDBGrid;
    cdsDetail: TClientDataSet;
    dsDetail: TDataSource;
    PopupMenu1: TPopupMenu;
    Insert1: TMenuItem;
    Insert2: TMenuItem;
    Delete1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure cbNamaAnggotaChange(Sender: TObject);
    procedure cdsDetailAfterPost(DataSet: TDataSet);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure Insert1Click(Sender: TObject);
    procedure Insert2Click(Sender: TObject);
    procedure Delete1Click(Sender: TObject);
  private
    { Private declarations }

    procedure GenerateKodeSimpanan;
    procedure HitungTotal;
  public
    { Public declarations }
    procedure LoadAnggota;
  end;

var
  FSimpanan: TFSimpanan;

implementation

{$R *.dfm}

uses UDM;

procedure TFSimpanan.LoadAnggota;
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

procedure TFSimpanan.btnBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TFSimpanan.btnSimpanClick(Sender: TObject);
var
  idSimpanan: Integer;
begin
  // Validasi dasar
  if edKodeSimpanan.Text = '' then
  begin
    ShowMessage('Kode simpanan tidak boleh kosong.');
    Exit;
  end;

  if cdsDetail.IsEmpty then
  begin
    ShowMessage('Detail simpanan masih kosong.');
    Exit;
  end;

  // Mode EDIT (Tag = 1)
  if Self.Tag = 1 then
  begin
    // Update simpanan_master
    FUDM.Qtemp.SQL.Text :=
      'UPDATE simpanan_master SET kode_anggota = :anggota, tanggal = :tgl, total = :total ' +
      'WHERE kode_simpanan = :kode';
    FUDM.Qtemp.ParamByName('kode').AsString := edKodeSimpanan.Text;
    FUDM.Qtemp.ParamByName('anggota').AsString := edKodeAnggota.Text;
    FUDM.Qtemp.ParamByName('tgl').AsDate := dtTanggal.Date;
    FUDM.Qtemp.ParamByName('total').AsFloat :=
      StrToFloatDef(StringReplace(edTotal.Text, ',', '', [rfReplaceAll]), 0);
    FUDM.Qtemp.ExecSQL;

    // Ambil id_simpanan dari kode_simpanan
    FUDM.Qtemp.SQL.Text :=
      'SELECT id_simpanan FROM simpanan_master WHERE kode_simpanan = :kode';
    FUDM.Qtemp.ParamByName('kode').AsString := edKodeSimpanan.Text;
    FUDM.Qtemp.Open;
    idSimpanan := FUDM.Qtemp.FieldByName('id_simpanan').AsInteger;
    FUDM.Qtemp.Close;

    // Hapus detail lama
    FUDM.Qtemp.SQL.Text := 'DELETE FROM simpanan_detail WHERE id_simpanan = :id';
    FUDM.Qtemp.ParamByName('id').AsInteger := idSimpanan;
    FUDM.Qtemp.ExecSQL;
  end
  else
  begin
    // Mode TAMBAH baru
    FUDM.Qtemp.SQL.Text :=
      'INSERT INTO simpanan_master (kode_simpanan, kode_anggota, tanggal, total) ' +
      'VALUES (:kode, :anggota, :tgl, :total)';
    FUDM.Qtemp.ParamByName('kode').AsString := edKodeSimpanan.Text;
    FUDM.Qtemp.ParamByName('anggota').AsString := edKodeAnggota.Text;
    FUDM.Qtemp.ParamByName('tgl').AsDate := dtTanggal.Date;
    FUDM.Qtemp.ParamByName('total').AsFloat :=
      StrToFloatDef(StringReplace(edTotal.Text, ',', '', [rfReplaceAll]), 0);
    FUDM.Qtemp.ExecSQL;

    // Ambil ID terakhir
    FUDM.Qtemp.SQL.Text := 'SELECT LAST_INSERT_ID() AS id_simpanan';
    FUDM.Qtemp.Open;
    idSimpanan := FUDM.Qtemp.FieldByName('id_simpanan').AsInteger;
    FUDM.Qtemp.Close;
  end;

  // Simpan detail (insert ulang)
  cdsDetail.First;
  while not cdsDetail.Eof do
  begin
    FUDM.Qtemp.SQL.Text :=
      'INSERT INTO simpanan_detail (id_simpanan, jumlah) VALUES (:id, :jumlah)';
    FUDM.Qtemp.ParamByName('id').AsInteger := idSimpanan;
    FUDM.Qtemp.ParamByName('jumlah').AsFloat :=
      cdsDetail.FieldByName('jumlah').AsFloat;
    FUDM.Qtemp.ExecSQL;
    cdsDetail.Next;
  end;

  ShowMessage('Data simpanan berhasil disimpan.');
  Close;
end;

procedure TFSimpanan.cbNamaAnggotaChange(Sender: TObject);
begin
  FUDM.Qtemp.SQL.Text := 'SELECT kode_anggota FROM anggota WHERE nama = :nama';
  FUDM.Qtemp.ParamByName('nama').AsString := cbNamaAnggota.Text;
  FUDM.Qtemp.Open;
  edKodeAnggota.Text := FUDM.Qtemp.FieldByName('kode_anggota').AsString;
  FUDM.Qtemp.Close;
end;

procedure TFSimpanan.cdsDetailAfterPost(DataSet: TDataSet);
begin
  HitungTotal;
end;

procedure TFSimpanan.Delete1Click(Sender: TObject);
begin
 if cdsDetail.RecordCount > 0 then
  cdsDetail.Delete;
end;

procedure TFSimpanan.FormShow(Sender: TObject);
begin
  LoadAnggota;

  if Self.Tag = 0 then
  begin
    // Mode Tambah
    GenerateKodeSimpanan;
    edTotal.Clear;
    dtTanggal.Date := Date;
    if cdsDetail.Active then
      cdsDetail.Close;
    cdsDetail.CreateDataSet;
  end;

  // Jangan lupa reset Tag jika perlu
  // Self.Tag := 0;
end;

procedure TFSimpanan.GenerateKodeSimpanan;
var
  kodeTerakhir: string;
  angka: Integer;
begin
  FUDM.Qtemp.SQL.Text := 'SELECT kode_simpanan FROM simpanan_master ORDER BY id_simpanan DESC LIMIT 1';
  FUDM.Qtemp.Open;
  if not FUDM.Qtemp.IsEmpty then
    angka := StrToIntDef(Copy(FUDM.Qtemp.FieldByName('kode_simpanan').AsString, 4, 3), 0) + 1
  else
    angka := 1;
  edKodeSimpanan.Text := Format('SMP%.3d', [angka]);
  FUDM.Qtemp.Close;
end;

procedure TFSimpanan.HitungTotal;
var
  total: Double;
begin
if cdsDetail.State in [dsEdit, dsInsert] then
    cdsDetail.Post;
  total := 0;
  cdsDetail.First;
  while not cdsDetail.Eof do
  begin
    total := total + cdsDetail.FieldByName('Jumlah').AsFloat;
    cdsDetail.Next;
  end;
  edTotal.Text := FloatToStr(total);
end;



procedure TFSimpanan.Insert1Click(Sender: TObject);
begin
cdsDetail.Insert;
end;

procedure TFSimpanan.Insert2Click(Sender: TObject);
begin
cdsDetail.Edit;
end;

end.
