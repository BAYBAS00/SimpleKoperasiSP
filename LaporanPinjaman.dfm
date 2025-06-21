object FLaporanPinjaman: TFLaporanPinjaman
  Left = 0
  Top = 0
  Caption = 'FLaporanPinjaman'
  ClientHeight = 601
  ClientWidth = 996
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Scaled = False
  TextHeight = 15
  object RLReport1: TRLReport
    Left = 4
    Top = 0
    Width = 992
    Height = 1403
    DataSource = DSLaporanPinjaman
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -17
    Font.Name = 'Arial'
    Font.Style = []
    Transparent = False
    object RLBand1: TRLBand
      Left = 47
      Top = 47
      Width = 898
      Height = 59
      BandType = btHeader
      Transparent = False
      object RLLabel1: TRLLabel
        Left = 297
        Top = 18
        Width = 319
        Height = 35
        Caption = 'LAPORAN PINJAMAN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -30
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
    end
    object RLGroup1: TRLGroup
      Left = 47
      Top = 106
      Width = 898
      Height = 293
      DataFields = 'kode_pinjaman'
      Transparent = False
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 898
        Height = 161
        BandType = btHeader
        Color = clGradientInactiveCaption
        ParentColor = False
        Transparent = False
        object RLLabel4: TRLLabel
          Left = 26
          Top = 28
          Width = 122
          Height = 19
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Kode Pinjaman'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel5: TRLLabel
          Left = 26
          Top = 63
          Width = 120
          Height = 19
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Nama Anggota'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel6: TRLLabel
          Left = 26
          Top = 98
          Width = 143
          Height = 19
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Tanggal Pinjaman'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLDBText1: TRLDBText
          Left = 192
          Top = 28
          Width = 114
          Height = 19
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataField = 'kode_pinjaman'
          DataSource = DSLaporanPinjaman
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLLabel2: TRLLabel
          Left = 378
          Top = 28
          Width = 137
          Height = 19
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Jumlah Pinjaman'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLDBText2: TRLDBText
          Left = 192
          Top = 63
          Width = 112
          Height = 19
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataField = 'nama_anggota'
          DataSource = DSLaporanPinjaman
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText6: TRLDBText
          Left = 192
          Top = 98
          Width = 131
          Height = 19
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataField = 'tanggal_pinjaman'
          DataSource = DSLaporanPinjaman
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText7: TRLDBText
          Left = 520
          Top = 28
          Width = 51
          Height = 19
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataField = 'jumlah'
          DataSource = DSLaporanPinjaman
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText10: TRLDBText
          Left = 520
          Top = 98
          Width = 111
          Height = 19
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataField = 'total_angsuran'
          DataSource = DSLaporanPinjaman
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText11: TRLDBText
          Left = 520
          Top = 131
          Width = 34
          Height = 19
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataField = 'sisa'
          DataSource = DSLaporanPinjaman
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText13: TRLDBText
          Left = 192
          Top = 131
          Width = 94
          Height = 19
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataField = 'status_lunas'
          DataSource = DSLaporanPinjaman
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText9: TRLDBText
          Left = 520
          Top = 63
          Width = 96
          Height = 19
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataField = 'total_tagihan'
          DataSource = DSLaporanPinjaman
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLLabel10: TRLLabel
          Left = 378
          Top = 98
          Width = 125
          Height = 19
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Total Angsuran'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel11: TRLLabel
          Left = 378
          Top = 131
          Width = 38
          Height = 19
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Sisa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel12: TRLLabel
          Left = 688
          Top = 28
          Width = 51
          Height = 19
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Tenor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel13: TRLLabel
          Left = 26
          Top = 131
          Width = 56
          Height = 19
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Status'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel14: TRLLabel
          Left = 688
          Top = 63
          Width = 56
          Height = 19
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Bunga'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel3: TRLLabel
          Left = 685
          Top = 98
          Width = 57
          Height = 19
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Cicilan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel9: TRLLabel
          Left = 378
          Top = 63
          Width = 111
          Height = 19
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Total Tagihan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLDBText8: TRLDBText
          Left = 760
          Top = 28
          Width = 42
          Height = 19
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataField = 'tenor'
          DataSource = DSLaporanPinjaman
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText12: TRLDBText
          Left = 760
          Top = 63
          Width = 50
          Height = 19
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataField = 'bunga'
          DataSource = DSLaporanPinjaman
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText14: TRLDBText
          Left = 760
          Top = 98
          Width = 52
          Height = 19
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataField = 'cicilan'
          DataSource = DSLaporanPinjaman
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
          Transparent = False
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 161
        Width = 898
        Height = 33
        BandType = btHeader
        Transparent = False
        object RLLabel7: TRLLabel
          Left = 74
          Top = 14
          Width = 127
          Height = 19
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Kode Angsuran'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel15: TRLLabel
          Left = 373
          Top = 14
          Width = 148
          Height = 19
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Tanggal Angsuran'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel16: TRLLabel
          Left = 701
          Top = 14
          Width = 142
          Height = 19
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Jumlah Angsuran'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 194
        Width = 898
        Height = 32
        object RLDBText3: TRLDBText
          Left = 74
          Top = 7
          Width = 117
          Height = 19
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataField = 'kode_angsuran'
          DataSource = DSLaporanPinjaman
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText4: TRLDBText
          Left = 373
          Top = 7
          Width = 134
          Height = 19
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataField = 'tanggal_angsuran'
          DataSource = DSLaporanPinjaman
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText5: TRLDBText
          Left = 701
          Top = 7
          Width = 128
          Height = 19
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataField = 'jumlah_angsuran'
          DataSource = DSLaporanPinjaman
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
          Transparent = False
        end
      end
      object RLBand6: TRLBand
        Left = 0
        Top = 226
        Width = 898
        Height = 20
        BandType = btFooter
        object RLDraw2: TRLDraw
          Left = 4
          Top = 8
          Width = 894
          Height = 12
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DrawKind = dkLine
          Transparent = False
        end
      end
    end
    object RLBand5: TRLBand
      Left = 47
      Top = 399
      Width = 898
      Height = 80
      BandType = btFooter
      Transparent = False
      object RLSystemInfo1: TRLSystemInfo
        Left = 26
        Top = 24
        Width = 51
        Height = 19
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Text = ''
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 769
        Top = 32
        Width = 21
        Height = 19
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Info = itPageNumber
        Text = ''
      end
      object RLLabel8: TRLLabel
        Left = 798
        Top = 32
        Width = 10
        Height = 19
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 816
        Top = 32
        Width = 142
        Height = 19
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Info = itLastPageNumber
        Text = ''
      end
    end
  end
  object QLaporanPinjaman: TMyQuery
    Connection = FUDM.MyConnection1
    SQL.Strings = (
      'SELECT'
      '  p.kode_pinjaman,'
      '  a.kode_anggota,'
      '  a.nama AS nama_anggota,'
      '  p.tanggal AS tanggal_pinjaman,'
      '  p.jumlah,'
      '  p.tenor,'
      '  p.bunga,'
      '  p.cicilan,'
      '  (p.tenor * p.cicilan) AS total_tagihan,'
      '  '
      '  ag.kode_angsuran,'
      '  ag.tanggal AS tanggal_angsuran,'
      '  ag.jumlah_angsuran,'
      '  '
      '  -- Total angsuran (subquery)'
      '  ('
      '    SELECT COALESCE(SUM(ag2.jumlah_angsuran), 0)'
      '    FROM angsuran ag2'
      '    WHERE ag2.kode_pinjaman = p.kode_pinjaman'
      '  ) AS total_angsuran,'
      '  '
      '  -- Sisa = total tagihan - total angsuran'
      '  ((p.tenor * p.cicilan) -'
      '    ('
      '      SELECT COALESCE(SUM(ag2.jumlah_angsuran), 0)'
      '      FROM angsuran ag2'
      '      WHERE ag2.kode_pinjaman = p.kode_pinjaman'
      '    )'
      '  ) AS sisa,'
      '  '
      '  p.status_lunas'
      'FROM'
      '  pinjaman p'
      'JOIN'
      '  anggota a ON p.kode_anggota = a.kode_anggota'
      'LEFT JOIN'
      '  angsuran ag ON p.kode_pinjaman = ag.kode_pinjaman'
      'ORDER BY'
      '  p.kode_pinjaman;')
    Active = True
    Left = 400
    Top = 484
    object QLaporanPinjamankode_pinjaman: TStringField
      FieldName = 'kode_pinjaman'
      Origin = 'pinjaman.kode_pinjaman'
      Size = 10
    end
    object QLaporanPinjamankode_anggota: TStringField
      FieldName = 'kode_anggota'
      Origin = 'anggota.kode_anggota'
      Size = 10
    end
    object QLaporanPinjamannama_anggota: TStringField
      FieldName = 'nama_anggota'
      Origin = 'anggota.nama'
      Size = 100
    end
    object QLaporanPinjamantanggal_pinjaman: TDateField
      FieldName = 'tanggal_pinjaman'
      Origin = 'pinjaman.tanggal'
    end
    object QLaporanPinjamanjumlah: TFloatField
      FieldName = 'jumlah'
      Origin = 'pinjaman.jumlah'
    end
    object QLaporanPinjamantenor: TIntegerField
      FieldName = 'tenor'
      Origin = 'pinjaman.tenor'
    end
    object QLaporanPinjamanbunga: TFloatField
      FieldName = 'bunga'
      Origin = 'pinjaman.bunga'
    end
    object QLaporanPinjamancicilan: TFloatField
      FieldName = 'cicilan'
      Origin = 'pinjaman.cicilan'
    end
    object QLaporanPinjamantotal_tagihan: TFloatField
      FieldName = 'total_tagihan'
      Origin = 'total_tagihan'
    end
    object QLaporanPinjamankode_angsuran: TStringField
      FieldName = 'kode_angsuran'
      Origin = 'angsuran.kode_angsuran'
      Size = 10
    end
    object QLaporanPinjamantanggal_angsuran: TDateField
      FieldName = 'tanggal_angsuran'
      Origin = 'angsuran.tanggal'
    end
    object QLaporanPinjamanjumlah_angsuran: TFloatField
      FieldName = 'jumlah_angsuran'
      Origin = 'angsuran.jumlah_angsuran'
    end
    object QLaporanPinjamantotal_angsuran: TFloatField
      FieldName = 'total_angsuran'
      Origin = 'total_angsuran'
    end
    object QLaporanPinjamansisa: TFloatField
      FieldName = 'sisa'
      Origin = 'sisa'
    end
    object QLaporanPinjamanstatus_lunas: TStringField
      FieldName = 'status_lunas'
      Origin = 'pinjaman.status_lunas'
      Size = 11
    end
  end
  object DSLaporanPinjaman: TDataSource
    DataSet = QLaporanPinjaman
    Left = 664
    Top = 468
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0.1.2 \251 Copyright '#169' 1999-20' +
      '21 Fortes Inform'#225'tica'
    DisplayName = 'PDF Document'
    Left = 784
    Top = 504
  end
end
