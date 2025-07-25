program ProjectKoperasi1;

uses
  Vcl.Forms,
  Anggota in 'Anggota.pas' {FAnggota},
  UDM in 'UDM.pas' {FUDM: TDataModule},
  Simpanan in 'Simpanan.pas' {FSimpanan},
  ListSimpanan in 'ListSimpanan.pas' {FListSimpanan},
  Pinjaman in 'Pinjaman.pas' {FPinjaman},
  Angsuran in 'Angsuran.pas' {FAngsuran},
  ListPinjaman in 'ListPinjaman.pas' {FListPinjaman},
  LaporanSimpanan in 'LaporanSimpanan.pas' {FLaporanSimpanan},
  LaporanPinjaman in 'LaporanPinjaman.pas' {FLaporanPinjaman},
  MainMenu in 'MainMenu.pas' {FMainMenu};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFUDM, FUDM);
  Application.CreateForm(TFMainMenu, FMainMenu);
  Application.CreateForm(TFAngsuran, FAngsuran);
  Application.CreateForm(TFListPinjaman, FListPinjaman);
  Application.CreateForm(TFListSimpanan, FListSimpanan);
  Application.CreateForm(TFAnggota, FAnggota);
  Application.CreateForm(TFPinjaman, FPinjaman);
  Application.CreateForm(TFSimpanan, FSimpanan);
  Application.CreateForm(TFLaporanSimpanan, FLaporanSimpanan);
  Application.CreateForm(TFLaporanPinjaman, FLaporanPinjaman);
  Application.Run;
end.
