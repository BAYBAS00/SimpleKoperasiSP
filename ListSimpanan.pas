unit ListSimpanan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, MyAccess,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFListSimpanan = class(TForm)
    Panel1: TPanel;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    btnRefresh: TBitBtn;
    btnTambah: TBitBtn;
    btnEdit: TBitBtn;
    btnHapus: TBitBtn;
    DBGrid1: TDBGrid;
    QListSimpanan: TMyQuery;
    DSListSimpanan: TDataSource;
    QListSimpananid_simpanan: TIntegerField;
    QListSimpanankode_simpanan: TStringField;
    QListSimpanantanggal: TDateField;
    QListSimpanantotal: TFloatField;
    QListSimpanankode_anggota: TStringField;
    QListSimpanannama: TStringField;
    Panel2: TPanel;
    Splitter4: TSplitter;
    Label1: TLabel;
    Splitter5: TSplitter;
    edCari: TEdit;
    Splitter6: TSplitter;
    btnLaporan: TBitBtn;
    procedure btnRefreshClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure edCariChange(Sender: TObject);
    procedure btnLaporanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FListSimpanan: TFListSimpanan;

implementation

{$R *.dfm}

uses Simpanan, UDM, LaporanSimpanan;

procedure TFListSimpanan.btnEditClick(Sender: TObject);
begin
  if QListSimpanan.IsEmpty then
  begin
    ShowMessage('Pilih data simpanan yang ingin diedit.');
    Exit;
  end;

  Application.CreateForm(TFSimpanan, FSimpanan);

  // Load data anggota dan detail
  FSimpanan.LoadAnggota;

  // Isi form dengan data simpanan terpilih
  FSimpanan.edKodeSimpanan.Text := QListSimpanan.FieldByName('kode_simpanan').AsString;
  FSimpanan.edKodeAnggota.Text := QListSimpanan.FieldByName('kode_anggota').AsString;
  FSimpanan.dtTanggal.Date := QListSimpanan.FieldByName('tanggal').AsDateTime;
  FSimpanan.edTotal.Text := FormatFloat('#,##0.00', QListSimpanan.FieldByName('total').AsFloat);

  // Set nama anggota pada combobox
  FSimpanan.cbNamaAnggota.ItemIndex :=
    FSimpanan.cbNamaAnggota.Items.IndexOf(QListSimpanan.FieldByName('nama').AsString);
  FSimpanan.cbNamaAnggota.OnChange(nil); // isi kode anggota

  // Ambil detail simpanan
  FSimpanan.cdsDetail.Close;
  FSimpanan.cdsDetail.CreateDataSet;

  FUDM.Qtemp.SQL.Text := 'SELECT jumlah FROM simpanan_detail WHERE id_simpanan = :id';
  FUDM.Qtemp.ParamByName('id').AsInteger := QListSimpanan.FieldByName('id_simpanan').AsInteger;
  FUDM.Qtemp.Open;
  while not FUDM.Qtemp.Eof do
  begin
    FSimpanan.cdsDetail.Append;
    FSimpanan.cdsDetail.FieldByName('Jumlah').AsFloat := FUDM.Qtemp.FieldByName('jumlah').AsFloat;
    FSimpanan.cdsDetail.Post;
    FUDM.Qtemp.Next;
  end;
  FUDM.Qtemp.Close;

  // Tampilkan form untuk edit
  FSimpanan.Tag := 1; // Gunakan Tag untuk tandai mode edit (optional)
  FSimpanan.ShowModal;
  btnRefreshClick(nil);
end;

procedure TFListSimpanan.btnHapusClick(Sender: TObject);
begin
var
  idSimpanan: Integer;
begin
  if QListSimpanan.IsEmpty then
  begin
    ShowMessage('Pilih data simpanan yang ingin dihapus.');
    Exit;
  end;

  if MessageDlg('Apakah Anda yakin ingin menghapus data simpanan ini?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    Exit;

  // Ambil ID simpanan
  idSimpanan := QListSimpanan.FieldByName('id_simpanan').AsInteger;

  // Hapus data di detail terlebih dahulu (karena FK)
  FUDM.Qtemp.SQL.Text := 'DELETE FROM simpanan_detail WHERE id_simpanan = :id';
  FUDM.Qtemp.ParamByName('id').AsInteger := idSimpanan;
  FUDM.Qtemp.ExecSQL;

  // Hapus data di master
  FUDM.Qtemp.SQL.Text := 'DELETE FROM simpanan_master WHERE id_simpanan = :id';
  FUDM.Qtemp.ParamByName('id').AsInteger := idSimpanan;
  FUDM.Qtemp.ExecSQL;

  ShowMessage('Data simpanan berhasil dihapus.');

  // Refresh data di grid
  btnRefreshClick(nil);
end;
end;

procedure TFListSimpanan.btnLaporanClick(Sender: TObject);
begin
// Load dan tampilkan laporan
  Application.CreateForm(TFLaporanSimpanan, FLaporanSimpanan);

  // Tampilkan juga laporan jika perlu (opsional)
  FLaporanSimpanan.RLReport1.PreviewModal;

  // Hapus form dari memori
  FLaporanSimpanan.Free;
end;

procedure TFListSimpanan.btnRefreshClick(Sender: TObject);
begin
QListSimpanan.Close;
QListSimpanan.Open;
end;

procedure TFListSimpanan.btnTambahClick(Sender: TObject);
begin
  if QListSimpanan.IsEmpty then
  begin
    ShowMessage('Silakan pilih data anggota terlebih dahulu.');
    Exit;
  end;

  // panggil Form Simpanan dan isi datanya
  Application.CreateForm(TFSimpanan, FSimpanan);
  FSimpanan.LoadAnggota;
  FSimpanan.cbNamaAnggota.ItemIndex :=
  FSimpanan.cbNamaAnggota.Items.IndexOf(QListSimpanan.FieldByName('nama').AsString);
  FSimpanan.cbNamaAnggota.OnChange(nil); // trigger isi edKodeAnggota
  FSimpanan.ShowModal;
  btnRefreshClick(nil);
end;

procedure TFListSimpanan.edCariChange(Sender: TObject);
begin
  QListSimpanan.MacroByName('WHERE').Value :=
    'WHERE sm.kode_simpanan LIKE ' + QuotedStr('%' + edCari.Text + '%') +
    ' OR a.nama LIKE ' + QuotedStr('%' + edCari.Text + '%');

  if QListSimpanan.Active then
    QListSimpanan.Refresh
  else
    QListSimpanan.Open;
end;

procedure TFListSimpanan.FormShow(Sender: TObject);
begin
btnRefreshClick(sender);
end;

end.
