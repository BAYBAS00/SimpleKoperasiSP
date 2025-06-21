unit LaporanSimpanan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, RLFilters, RLPDFFilter,
  Data.DB, MemDS, DBAccess, MyAccess;

type
  TFLaporanSimpanan = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    QLaporanSimpan: TMyQuery;
    DSLaporanSimpan: TDataSource;
    RLPDFFilter1: TRLPDFFilter;
    RLLabel1: TRLLabel;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLBand4: TRLBand;
    RLBand5: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLLabel7: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel8: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLBand6: TRLBand;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLDraw2: TRLDraw;
    RLDraw3: TRLDraw;
    RLDraw1: TRLDraw;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLaporanSimpanan: TFLaporanSimpanan;

implementation

{$R *.dfm}

uses UDM;

end.
