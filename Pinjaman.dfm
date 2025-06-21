object FPinjaman: TFPinjaman
  Left = 0
  Top = 0
  Caption = 'FPinjaman'
  ClientHeight = 637
  ClientWidth = 929
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
    Left = 56
    Top = 48
    Width = 152
    Height = 31
    Caption = 'Kode Pinjaman'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 56
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
    Left = 56
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
    Left = 56
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
  object Label5: TLabel
    Left = 56
    Top = 304
    Width = 72
    Height = 31
    Caption = 'Jumlah'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 56
    Top = 368
    Width = 65
    Height = 31
    Caption = 'Bunga'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 56
    Top = 432
    Width = 56
    Height = 31
    Caption = 'Tenor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 56
    Top = 496
    Width = 68
    Height = 31
    Caption = 'Cicilan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object edKodePinjaman: TEdit
    Left = 256
    Top = 45
    Width = 273
    Height = 39
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object edKodeAnggota: TEdit
    Left = 256
    Top = 173
    Width = 273
    Height = 39
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object edJumlah: TEdit
    Left = 256
    Top = 301
    Width = 273
    Height = 39
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnChange = edJumlahChange
  end
  object edBunga: TEdit
    Left = 256
    Top = 365
    Width = 273
    Height = 39
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnChange = edBungaChange
  end
  object edTenor: TEdit
    Left = 256
    Top = 429
    Width = 273
    Height = 39
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnChange = edTenorChange
  end
  object cbNamaAnggota: TComboBox
    Left = 256
    Top = 109
    Width = 273
    Height = 39
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnChange = cbNamaAnggotaChange
  end
  object dtTanggal: TDateTimePicker
    Left = 256
    Top = 240
    Width = 273
    Height = 39
    Date = 45829.000000000000000000
    Time = 0.481332326387928300
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object edCicilan: TEdit
    Left = 256
    Top = 493
    Width = 273
    Height = 39
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object Panel1: TPanel
    Left = 0
    Top = 557
    Width = 929
    Height = 80
    Align = alBottom
    TabOrder = 8
    ExplicitTop = 549
    ExplicitWidth = 927
    object Splitter1: TSplitter
      Left = 785
      Top = 1
      Height = 78
      Align = alRight
      ExplicitLeft = 851
      ExplicitHeight = 94
    end
    object Splitter2: TSplitter
      Left = 925
      Top = 1
      Height = 78
      Align = alRight
      ExplicitLeft = 926
    end
    object btnBatal: TBitBtn
      Left = 788
      Top = 1
      Width = 137
      Height = 78
      Align = alRight
      Caption = 'Batal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnBatalClick
      ExplicitLeft = 786
    end
    object btnSimpan: TBitBtn
      Left = 648
      Top = 1
      Width = 137
      Height = 78
      Align = alRight
      Caption = 'Simpan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnSimpanClick
      ExplicitLeft = 646
    end
  end
end
