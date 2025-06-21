unit MainMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TFMainMenu = class(TForm)
    MainMenu1: TMainMenu;
    Exit1: TMenuItem;
    Simpanan: TMenuItem;
    Pinjaman: TMenuItem;
    Anggota: TMenuItem;
    Angsuran: TMenuItem;
    procedure Exit1Click(Sender: TObject);
    procedure AnggotaClick(Sender: TObject);
    procedure SimpananClick(Sender: TObject);
    procedure PinjamanClick(Sender: TObject);
    procedure AngsuranClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMainMenu: TFMainMenu;

implementation

{$R *.dfm}

uses Anggota, Angsuran, ListPinjaman, ListSimpanan, UDM;

procedure TFMainMenu.AngsuranClick(Sender: TObject);
begin
Application.CreateForm(TFAngsuran, FAngsuran);
FAngsuran.Show;
end;

procedure TFMainMenu.Exit1Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TFMainMenu.SimpananClick(Sender: TObject);
begin
Application.CreateForm(TFListSimpanan, FListSimpanan);
FListSimpanan.Show;
end;

procedure TFMainMenu.PinjamanClick(Sender: TObject);
begin
Application.CreateForm(TFListPinjaman, FListPinjaman);
FListPinjaman.Show;
end;

procedure TFMainMenu.AnggotaClick(Sender: TObject);
begin
Application.CreateForm(TFAnggota, FAnggota);
FAnggota.Show;
end;

end.
