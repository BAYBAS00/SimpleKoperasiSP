object FListPinjaman: TFListPinjaman
  Left = 0
  Top = 0
  Caption = 'List Pinjaman'
  ClientHeight = 540
  ClientWidth = 938
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnShow = FormShow
  TextHeight = 15
  object Panel2: TPanel
    Left = 0
    Top = 89
    Width = 938
    Height = 35
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 936
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 124
    Width = 938
    Height = 416
    Align = alClient
    DataSource = DSListPinjaman
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'kode_pinjaman'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_anggota'
        Width = 102
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tanggal_pinjaman'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jumlah'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tenor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bunga'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cicilan'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'total_tagihan'
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'total_angsuran'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sisa'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status_lunas'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 938
    Height = 89
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 936
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
  object QListPinjaman: TMyQuery
    Connection = FUDM.MyConnection1
    SQL.Strings = (
      'SELECT'
      '  p.kode_pinjaman,'
      '  a.nama AS nama_anggota,'
      '  p.tanggal AS tanggal_pinjaman,'
      '  p.jumlah,'
      '  p.tenor,'
      '  p.bunga,'
      '  p.cicilan,'
      '  (p.tenor * p.cicilan) AS total_tagihan,'
      '  COALESCE(SUM(ag.jumlah_angsuran), 0) AS total_angsuran,'
      
        '  (p.tenor * p.cicilan) - COALESCE(SUM(ag.jumlah_angsuran), 0) A' +
        'S sisa,'
      '  p.status_lunas'
      'FROM'
      '  pinjaman p'
      'JOIN'
      '  anggota a ON p.kode_anggota = a.kode_anggota'
      'LEFT JOIN'
      '  angsuran ag ON p.kode_pinjaman = ag.kode_pinjaman'
      '&WHERE'
      'GROUP BY'
      
        '  p.kode_pinjaman, a.nama, p.tanggal, p.jumlah, p.tenor, p.bunga' +
        ', p.cicilan, p.status_lunas'
      'ORDER BY'
      '  p.tanggal DESC;')
    Left = 464
    Top = 272
    MacroData = <
      item
        Name = 'WHERE'
      end>
  end
  object DSListPinjaman: TDataSource
    DataSet = QListPinjaman
    Left = 584
    Top = 280
  end
end
