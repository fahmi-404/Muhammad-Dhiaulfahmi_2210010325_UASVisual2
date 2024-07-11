object Form1: TForm1
  Left = 224
  Top = 330
  Width = 928
  Height = 549
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 40
    Top = 40
    Width = 23
    Height = 19
    Caption = 'Nik'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 40
    Top = 72
    Width = 41
    Height = 19
    Caption = 'Nama'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 40
    Top = 104
    Width = 31
    Height = 19
    Caption = 'Telp'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 40
    Top = 136
    Width = 39
    Height = 19
    Caption = 'Email'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 40
    Top = 168
    Width = 50
    Height = 19
    Caption = 'Alamat'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 40
    Top = 200
    Width = 57
    Height = 19
    Caption = 'Member'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl7: TLabel
    Left = 328
    Top = 200
    Width = 59
    Height = 19
    Caption = 'Diskon :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl8: TLabel
    Left = 48
    Top = 464
    Width = 115
    Height = 19
    Caption = 'Masukkan Nama'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edt1: TEdit
    Left = 152
    Top = 40
    Width = 257
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 152
    Top = 72
    Width = 257
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 152
    Top = 104
    Width = 257
    Height = 21
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 152
    Top = 136
    Width = 257
    Height = 21
    TabOrder = 3
  end
  object edt5: TEdit
    Left = 152
    Top = 168
    Width = 257
    Height = 21
    TabOrder = 4
  end
  object cbb1: TComboBox
    Left = 152
    Top = 200
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    OnChange = cbb1Change
    Items.Strings = (
      'No'
      'Admin')
  end
  object dbgrd1: TDBGrid
    Left = 40
    Top = 288
    Width = 681
    Height = 161
    DataSource = DataModule2.DataSource1
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object btn1: TButton
    Left = 72
    Top = 240
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 7
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 168
    Top = 240
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 8
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 264
    Top = 240
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 9
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 360
    Top = 240
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 10
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 456
    Top = 240
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 11
    OnClick = btn5Click
  end
  object edt6: TEdit
    Left = 200
    Top = 464
    Width = 433
    Height = 21
    TabOrder = 12
  end
  object btn6: TButton
    Left = 552
    Top = 240
    Width = 75
    Height = 25
    Caption = 'CETAK'
    TabOrder = 13
    OnClick = btn6Click
  end
end
