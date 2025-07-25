object FListSimpanan: TFListSimpanan
  Left = 0
  Top = 0
  Caption = 'List Simpanan'
  ClientHeight = 494
  ClientWidth = 875
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnShow = FormShow
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 875
    Height = 89
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 873
    object Splitter1: TSplitter
      Left = 490
      Top = 1
      Height = 87
      ExplicitLeft = 499
      ExplicitTop = 2
    end
    object Splitter2: TSplitter
      Left = 162
      Top = 1
      Height = 87
      ExplicitLeft = 176
      ExplicitTop = 40
      ExplicitHeight = 100
    end
    object Splitter3: TSplitter
      Left = 326
      Top = 1
      Height = 87
      ExplicitLeft = 349
      ExplicitTop = 0
    end
    object Splitter6: TSplitter
      Left = 654
      Top = 1
      Height = 87
      ExplicitLeft = 496
      ExplicitTop = 24
      ExplicitHeight = 100
    end
    object btnRefresh: TBitBtn
      Left = 493
      Top = 1
      Width = 161
      Height = 87
      Align = alLeft
      Caption = 'Refresh'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -23
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnRefreshClick
    end
    object btnTambah: TBitBtn
      Left = 1
      Top = 1
      Width = 161
      Height = 87
      Align = alLeft
      Caption = 'Tambah'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -23
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnTambahClick
    end
    object btnEdit: TBitBtn
      Left = 165
      Top = 1
      Width = 161
      Height = 87
      Align = alLeft
      Caption = 'Edit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -23
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnEditClick
    end
    object btnHapus: TBitBtn
      Left = 329
      Top = 1
      Width = 161
      Height = 87
      Align = alLeft
      Caption = 'Hapus'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -23
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btnHapusClick
    end
    object btnLaporan: TBitBtn
      Left = 657
      Top = 1
      Width = 161
      Height = 87
      Align = alLeft
      Caption = 'Laporan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -23
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btnLaporanClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 124
    Width = 875
    Height = 370
    Align = alClient
    DataSource = DSListSimpanan
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id_simpanan'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'kode_simpanan'
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tanggal'
        Width = 103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'total'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kode_anggota'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama'
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 89
    Width = 875
    Height = 35
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 873
    object Splitter4: TSplitter
      Left = 1
      Top = 1
      Height = 33
      ExplicitLeft = 8
      ExplicitTop = 16
      ExplicitHeight = 100
    end
    object Label1: TLabel
      Left = 4
      Top = 1
      Width = 42
      Height = 33
      Align = alLeft
      Caption = 'CARI'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitHeight = 28
    end
    object Splitter5: TSplitter
      Left = 46
      Top = 1
      Height = 33
      ExplicitLeft = 9
      ExplicitTop = 2
    end
    object edCari: TEdit
      Left = 49
      Top = 1
      Width = 444
      Height = 33
      Align = alLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = edCariChange
      ExplicitHeight = 36
    end
  end
  object QListSimpanan: TMyQuery
    Connection = FUDM.MyConnection1
    SQL.Strings = (
      'SELECT'
      '  sm.id_simpanan,'
      '  sm.kode_simpanan,'
      '  sm.tanggal,'
      '  sm.total,'
      '  a.kode_anggota,'
      '  a.nama'
      'FROM'
      '  simpanan_master sm'
      '  INNER JOIN anggota a ON sm.kode_anggota = a.kode_anggota'
      '&WHERE'
      'ORDER BY sm.id_simpanan DESC;')
    Left = 424
    Top = 312
    MacroData = <
      item
        Name = 'WHERE'
      end>
    object QListSimpananid_simpanan: TIntegerField
      DisplayWidth = 11
      FieldName = 'id_simpanan'
      Origin = 'simpanan_master.id_simpanan'
    end
    object QListSimpanankode_simpanan: TStringField
      DisplayWidth = 13
      FieldName = 'kode_simpanan'
      Origin = 'simpanan_master.kode_simpanan'
      Size = 10
    end
    object QListSimpanantanggal: TDateField
      DisplayWidth = 10
      FieldName = 'tanggal'
      Origin = 'simpanan_master.tanggal'
    end
    object QListSimpanantotal: TFloatField
      DisplayWidth = 27
      FieldName = 'total'
      Origin = 'simpanan_master.total'
    end
    object QListSimpanankode_anggota: TStringField
      DisplayWidth = 29
      FieldName = 'kode_anggota'
      Origin = 'anggota.kode_anggota'
      Size = 10
    end
    object QListSimpanannama: TStringField
      DisplayWidth = 42
      FieldName = 'nama'
      Origin = 'anggota.nama'
      Size = 100
    end
  end
  object DSListSimpanan: TDataSource
    DataSet = QListSimpanan
    Left = 616
    Top = 296
  end
end
