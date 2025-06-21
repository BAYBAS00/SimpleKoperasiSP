object FLaporanSimpanan: TFLaporanSimpanan
  Left = 0
  Top = 0
  Caption = 'FLaporanSimpanan'
  ClientHeight = 573
  ClientWidth = 990
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Scaled = False
  TextHeight = 15
  object RLReport1: TRLReport
    Left = 0
    Top = 0
    Width = 992
    Height = 1403
    DataSource = DSLaporanSimpan
    DefaultFilter = RLPDFFilter1
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
      Height = 66
      BandType = btHeader
      Transparent = False
      object RLLabel1: TRLLabel
        Left = 304
        Top = 24
        Width = 322
        Height = 35
        Caption = 'LAPORAN SIMPANAN'
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
      Top = 113
      Width = 898
      Height = 257
      DataFields = 'kode_anggota'
      Transparent = False
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 898
        Height = 81
        BandType = btHeader
        Color = clGradientInactiveCaption
        ParentColor = False
        Transparent = False
        object RLLabel2: TRLLabel
          Left = 160
          Top = 18
          Width = 170
          Height = 24
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'KODE ANGGOTA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel3: TRLLabel
          Left = 544
          Top = 18
          Width = 186
          Height = 24
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'NAMA ANGGGOTA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLDBText1: TRLDBText
          Left = 160
          Top = 49
          Width = 131
          Height = 23
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataField = 'kode_anggota'
          DataSource = DSLaporanSimpan
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText2: TRLDBText
          Left = 544
          Top = 49
          Width = 54
          Height = 23
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataField = 'nama'
          DataSource = DSLaporanSimpan
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
          Transparent = False
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 132
        Width = 898
        Height = 37
        Transparent = False
        object RLDBText3: TRLDBText
          Left = 120
          Top = 8
          Width = 119
          Height = 19
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataField = 'kode_simpanan'
          DataSource = DSLaporanSimpan
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
          Left = 384
          Top = 8
          Width = 57
          Height = 19
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataField = 'tanggal'
          DataSource = DSLaporanSimpan
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
          Left = 673
          Top = 8
          Width = 34
          Height = 19
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataField = 'total'
          DataSource = DSLaporanSimpan
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
      object RLBand4: TRLBand
        Left = 0
        Top = 169
        Width = 898
        Height = 56
        BandType = btFooter
        Color = clWhite
        ParentColor = False
        Transparent = False
        object RLLabel7: TRLLabel
          Left = 473
          Top = 16
          Width = 153
          Height = 24
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Total Simpanan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLDBResult1: TRLDBResult
          Left = 673
          Top = 21
          Width = 84
          Height = 19
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataField = 'total'
          DataSource = DSLaporanSimpan
          Info = riSum
          Text = ''
          Transparent = False
        end
        object RLDraw3: TRLDraw
          Left = 0
          Top = 4
          Width = 894
          Height = 12
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DrawKind = dkLine
          Transparent = False
        end
        object RLDraw1: TRLDraw
          Left = 4
          Top = 48
          Width = 894
          Height = 1
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DrawKind = dkLine
          Transparent = False
        end
      end
      object RLBand6: TRLBand
        Left = 0
        Top = 81
        Width = 898
        Height = 51
        BandType = btHeader
        object RLLabel4: TRLLabel
          Left = 120
          Top = 26
          Width = 154
          Height = 24
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Kode Simpanan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel5: TRLLabel
          Left = 384
          Top = 26
          Width = 181
          Height = 24
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Tanggal Simpanan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel6: TRLLabel
          Left = 673
          Top = 26
          Width = 173
          Height = 24
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Jumlah Simpanan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLDraw2: TRLDraw
          Left = 0
          Top = 7
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
      Top = 370
      Width = 898
      Height = 64
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
  object QLaporanSimpan: TMyQuery
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
      'ORDER BY sm.id_simpanan DESC;')
    Active = True
    Left = 840
    Top = 488
  end
  object DSLaporanSimpan: TDataSource
    DataSet = QLaporanSimpan
    Left = 528
    Top = 504
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0.1.2 \251 Copyright '#169' 1999-20' +
      '21 Fortes Inform'#225'tica'
    DisplayName = 'PDF Document'
    Left = 712
    Top = 488
  end
end
