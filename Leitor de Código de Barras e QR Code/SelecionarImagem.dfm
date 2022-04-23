object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 419
  ClientWidth = 662
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object uploadImagem: TImage
    Left = 0
    Top = 0
    Width = 477
    Height = 378
    Align = alClient
    ExplicitWidth = 342
    ExplicitHeight = 185
  end
  object mmoCodigoLido: TMemo
    Left = 477
    Top = 0
    Width = 185
    Height = 378
    Align = alRight
    Lines.Strings = (
      'mmoCodigoLido')
    TabOrder = 0
    ExplicitLeft = 342
    ExplicitHeight = 89
  end
  object pnlBotaoEnviarCodigo: TPanel
    Left = 0
    Top = 378
    Width = 662
    Height = 41
    Align = alBottom
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
    ExplicitTop = 200
    ExplicitWidth = 527
    object btnEnviarCodigoLido: TButton
      AlignWithMargins = True
      Left = 24
      Top = 8
      Width = 137
      Height = 25
      Caption = 'Copiar c'#243'digo'
      TabOrder = 0
    end
  end
  object OpenDialog: TOpenDialog
    Left = 176
    Top = 80
  end
end
