object FUDM: TFUDM
  Height = 750
  Width = 1000
  PixelsPerInch = 120
  object MyConnection1: TMyConnection
    Database = 'dbkoperasi1'
    Username = 'root'
    Server = 'localhost'
    Connected = True
    Left = 480
    Top = 360
    EncryptedPassword = '8DFF90FF90FF8BFF'
  end
  object Qtemp: TMyQuery
    Connection = MyConnection1
    Left = 608
    Top = 320
  end
end
