object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Interface'
  ClientHeight = 180
  ClientWidth = 224
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object LabelResultado: TLabel
    Left = 16
    Top = 144
    Width = 200
    Height = 21
    AutoSize = False
    Caption = 'Resultado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object EditNum1: TEdit
    Left = 8
    Top = 8
    Width = 208
    Height = 23
    TabOrder = 0
  end
  object EditNum2: TEdit
    Left = 8
    Top = 43
    Width = 208
    Height = 23
    TabOrder = 1
  end
  object BtnSomar: TButton
    Left = 8
    Top = 72
    Width = 99
    Height = 25
    Caption = 'Somar'
    TabOrder = 2
    OnClick = BtnSomarClick
  end
  object BtnSubtrair: TButton
    Left = 120
    Top = 72
    Width = 96
    Height = 25
    Caption = 'Subtrair'
    TabOrder = 3
    OnClick = BtnSubtrairClick
  end
  object BtnMultiplicar: TButton
    Left = 8
    Top = 103
    Width = 99
    Height = 25
    Caption = 'Multiplicar'
    TabOrder = 4
    OnClick = BtnMultiplicarClick
  end
  object BtnDividir: TButton
    Left = 120
    Top = 103
    Width = 96
    Height = 25
    Caption = 'Dividir'
    TabOrder = 5
    OnClick = BtnDividirClick
  end
end
