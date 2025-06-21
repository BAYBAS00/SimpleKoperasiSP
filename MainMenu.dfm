object FMainMenu: TFMainMenu
  Left = 0
  Top = 0
  Caption = 'Main Menu'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  WindowState = wsMaximized
  TextHeight = 15
  object MainMenu1: TMainMenu
    Left = 328
    Top = 232
    object Exit1: TMenuItem
      Caption = 'Exit'
      OnClick = Exit1Click
    end
    object Anggota: TMenuItem
      Caption = 'Anggota'
      OnClick = AnggotaClick
    end
    object Simpanan: TMenuItem
      Caption = 'Simpanan'
      OnClick = SimpananClick
    end
    object Pinjaman: TMenuItem
      Caption = 'Pinjaman'
      OnClick = PinjamanClick
    end
    object Angsuran: TMenuItem
      Caption = 'Angsuran'
      OnClick = AngsuranClick
    end
  end
end
