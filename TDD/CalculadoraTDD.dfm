object FormTDD: TFormTDD
  Left = 0
  Top = 0
  Caption = 'Testando TDD'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 15
  object LabelPrimeiraVariavel: TLabel
    Left = 176
    Top = 86
    Width = 120
    Height = 21
    Caption = 'Primeira vari'#225'vel:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object LabelSegundaVariavel: TLabel
    Left = 176
    Top = 139
    Width = 122
    Height = 21
    Caption = 'Segunda vari'#225'vel:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object LabelOperacoes: TLabel
    Left = 256
    Top = 184
    Width = 74
    Height = 21
    Caption = 'Opera'#231#245'es'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object LabelResultado: TLabel
    Left = 210
    Top = 336
    Width = 86
    Height = 25
    Caption = 'Resultado:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object ButtonSomar: TButton
    Left = 88
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Somar'
    TabOrder = 0
    OnClick = ButtonSomarClick
  end
  object ButtonSubtrair: TButton
    Left = 200
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Subtrair'
    TabOrder = 1
    OnClick = ButtonSubtrairClick
  end
  object ButtonDividir: TButton
    Left = 312
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Dividir'
    TabOrder = 2
    OnClick = ButtonDividirClick
  end
  object ButtonMultiplicar: TButton
    Left = 424
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Multiplicar'
    TabOrder = 3
    OnClick = ButtonMultiplicarClick
  end
  object EditPrimeiraVariavel: TEdit
    Left = 312
    Top = 88
    Width = 121
    Height = 23
    TabOrder = 4
  end
  object EditSegundaVariavel: TEdit
    Left = 312
    Top = 136
    Width = 121
    Height = 23
    TabOrder = 5
  end
  object EditResultado: TEdit
    Left = 312
    Top = 336
    Width = 121
    Height = 23
    TabOrder = 6
  end
end
