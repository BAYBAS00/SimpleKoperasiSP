object FSimpanan: TFSimpanan
  Left = 0
  Top = 0
  Caption = 'Simpanan'
  ClientHeight = 581
  ClientWidth = 928
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnShow = FormShow
  TextHeight = 15
  object Label1: TLabel
    Left = 88
    Top = 48
    Width = 159
    Height = 31
    Caption = 'Kode Simpanan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 88
    Top = 112
    Width = 156
    Height = 31
    Caption = 'Nama Anggota'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 88
    Top = 176
    Width = 146
    Height = 31
    Caption = 'Kode Anggota'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 88
    Top = 240
    Width = 80
    Height = 31
    Caption = 'Tanggal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object edKodeSimpanan: TEdit
    Left = 296
    Top = 45
    Width = 281
    Height = 39
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object cbNamaAnggota: TComboBox
    Left = 296
    Top = 109
    Width = 281
    Height = 39
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnChange = cbNamaAnggotaChange
  end
  object edKodeAnggota: TEdit
    Left = 296
    Top = 173
    Width = 281
    Height = 39
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object dtTanggal: TDateTimePicker
    Left = 296
    Top = 240
    Width = 281
    Height = 39
    Date = 45828.000000000000000000
    Time = 0.994173854167456700
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object Panel1: TPanel
    Left = 0
    Top = 456
    Width = 928
    Height = 125
    Align = alBottom
    TabOrder = 4
    ExplicitTop = 448
    ExplicitWidth = 926
    object Label5: TLabel
      Left = 11
      Top = 56
      Width = 157
      Height = 31
      Caption = 'Total Simpanan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -23
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object btnBatal: TBitBtn
      Left = 792
      Top = 56
      Width = 105
      Height = 49
      Caption = 'Batal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnBatalClick
    end
    object btnSimpan: TBitBtn
      Left = 656
      Top = 56
      Width = 105
      Height = 49
      Caption = 'Simpan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnSimpanClick
    end
    object edTotal: TEdit
      Left = 200
      Top = 59
      Width = 281
      Height = 39
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -23
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 304
    Width = 928
    Height = 152
    Align = alBottom
    DataSource = dsDetail
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Jumlah'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -23
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = []
        Width = 562
        Visible = True
      end>
  end
  object cdsDetail: TClientDataSet
    PersistDataPacket.Data = {
      290000009619E0BD0100000018000000010000000000030000002900064A756D
      6C616808000400000000000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Jumlah'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    AfterPost = cdsDetailAfterPost
    Left = 624
    Top = 344
  end
  object dsDetail: TDataSource
    DataSet = cdsDetail
    Left = 728
    Top = 376
  end
  object PopupMenu1: TPopupMenu
    Left = 536
    Top = 416
    object Insert1: TMenuItem
      Caption = 'Insert'
      OnClick = Insert1Click
    end
    object Insert2: TMenuItem
      Caption = 'Edit'
      OnClick = Insert2Click
    end
    object Delete1: TMenuItem
      Caption = 'Delete'
      OnClick = Delete1Click
    end
  end
end
