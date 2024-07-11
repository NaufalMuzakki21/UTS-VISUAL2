object Form1: TForm1
  Left = 211
  Top = 136
  Width = 928
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object StaticText1: TStaticText
    Left = 72
    Top = 32
    Width = 33
    Height = 17
    Caption = 'NAMA'
    TabOrder = 0
  end
  object StaticText2: TStaticText
    Left = 72
    Top = 88
    Width = 54
    Height = 17
    Caption = 'DISKRIPSI'
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 200
    Top = 24
    Width = 185
    Height = 21
    TabOrder = 2
  end
  object Edit2: TEdit
    Left = 200
    Top = 80
    Width = 185
    Height = 21
    TabOrder = 3
  end
  object Button1: TButton
    Left = 56
    Top = 128
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 320
    Top = 128
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 144
    Top = 128
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 6
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 232
    Top = 128
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 7
    OnClick = Button4Click
  end
  object DBGrid1: TDBGrid
    Left = 48
    Top = 176
    Width = 353
    Height = 105
    DataSource = DataSource1
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'diskripsi'
        Visible = True
      end>
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Properties.Strings = (
      ''
      'controls_cp=GET_ACP')
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Users\ASUS\Documents\Tugas UTS Visual2\libmysql.dll'
    Left = 440
    Top = 8
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from satuan')
    Params = <>
    Left = 440
    Top = 56
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 440
    Top = 112
  end
end
