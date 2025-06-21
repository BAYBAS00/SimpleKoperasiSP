unit ListPinjaman;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, MemDS, DBAccess, MyAccess, Vcl.Grids, Vcl.DBGrids;

type
  TFListPinjaman = class(TForm)
    Panel2: TPanel;
    Splitter4: TSplitter;
    Label1: TLabel;
    Splitter5: TSplitter;
    edCari: TEdit;
    DBGrid1: TDBGrid;
    QListPinjaman: TMyQuery;
    DSListPinjaman: TDataSource;
    Panel1: TPanel;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    btnRefresh: TBitBtn;
    btnTambah: TBitBtn;
    btnEdit: TBitBtn;
    btnHapus: TBitBtn;
    btnLaporan: TBitBtn;
    Splitter6: TSplitter;
    procedure btnTambahClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure edCariChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnLaporanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FListPinjaman: TFListPinjaman;

implementation

{$R *.dfm}

uses Angsuran, Pinjaman, UDM, LaporanPinjaman;

procedure TFListPinjaman.btnEditClick(Sender: TObject);
begin
  if not QListPinjaman.IsEmpty then
  begin
    FPinjaman := TFPinjaman.Create(Self);
    FPinjaman.IsEditMode := True;
    FPinjaman.KodePinjamanEdit := QListPinjaman.FieldByName('kode_pinjaman').AsString;
    FPinjaman.ShowModal;
    FPinjaman.Free;
    QListPinjaman.Refresh;
  end;
end;

procedure TFListPinjaman.btnHapusClick(Sender: TObject);
var
  kode: string;
begin
  if QListPinjaman.IsEmpty then
  begin
    ShowMessage('Tidak ada data yang dipilih.');
    Exit;
  end;

  if MessageDlg('Apakah Anda yakin ingin menghapus data pinjaman ini?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    kode := QListPinjaman.FieldByName('kode_pinjaman').AsString;

    // Hapus terlebih dahulu data angsuran terkait (jika ada)
    FUDM.Qtemp.SQL.Text := 'DELETE FROM angsuran WHERE kode_pinjaman = :kode';
    FUDM.Qtemp.ParamByName('kode').AsString := kode;
    FUDM.Qtemp.ExecSQL;

    // Hapus data pinjaman
    FUDM.Qtemp.SQL.Text := 'DELETE FROM pinjaman WHERE kode_pinjaman = :kode';
    FUDM.Qtemp.ParamByName('kode').AsString := kode;
    FUDM.Qtemp.ExecSQL;

    ShowMessage('Data berhasil dihapus.');
    QListPinjaman.Refresh;
  end;
end;


procedure TFListPinjaman.btnLaporanClick(Sender: TObject);
begin
// Load dan tampilkan laporan
  Application.CreateForm(TFLaporanPinjaman, FLaporanPinjaman);

  // Tampilkan juga laporan jika perlu (opsional)
  FLaporanPinjaman.RLReport1.PreviewModal;

  // Hapus form dari memori
  FLaporanPinjaman.Free;
end;

procedure TFListPinjaman.btnRefreshClick(Sender: TObject);
begin
  QListPinjaman.Close;
  QListPinjaman.Open;
end;

procedure TFListPinjaman.btnTambahClick(Sender: TObject);
begin
  FPinjaman := TFPinjaman.Create(Self);
  FPinjaman.IsEditMode := False;
  FPinjaman.ShowModal;
  FPinjaman.Free;
  QListPinjaman.Refresh;
end;

procedure TFListPinjaman.edCariChange(Sender: TObject);
begin
  QListPinjaman.MacroByName('WHERE').Value :=
    'WHERE p.kode_pinjaman LIKE ' + QuotedStr('%' + edCari.Text + '%') +
    ' OR a.nama LIKE ' + QuotedStr('%' + edCari.Text + '%');

  if QListPinjaman.Active then
    QListPinjaman.Refresh
  else
    QListPinjaman.Open;
end;

procedure TFListPinjaman.FormShow(Sender: TObject);
begin
btnRefreshClick(sender);
end;

end.
