unit UDM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, MemDS, DBAccess, MyAccess;

type
  TFUDM = class(TDataModule)
    MyConnection1: TMyConnection;
    Qtemp: TMyQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUDM: TFUDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}



end.
