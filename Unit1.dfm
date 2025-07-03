object Form1: TForm1
  Left = 248
  Top = 127
  Width = 254
  Height = 132
  Caption = 'Listar Senhas do SUMUS.'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 16
    Width = 26
    Height = 13
    Caption = 'M'#234's :'
  end
  object Edit1: TEdit
    Left = 80
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'C:\STFEV'
  end
  object Button1: TButton
    Left = 80
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Listar'
    TabOrder = 1
    OnClick = Button1Click
  end
end
