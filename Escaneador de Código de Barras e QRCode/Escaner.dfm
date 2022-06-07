object EscaneadorCodigoBarrasQRCode: TEscaneadorCodigoBarrasQRCode
  Left = 0
  Top = 0
  Caption = 'Escaneador de C'#243'digo de Barras e QR Code'
  ClientHeight = 242
  ClientWidth = 527
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object memoCodigoLido: TMemo
    Tag = 1
    Left = 0
    Top = 0
    Width = 185
    Height = 242
    Align = alLeft
    Lines.Strings = (
      'mmo1')
    TabOrder = 0
  end
  object btnLerCodigoBarras: TButton
    Left = 191
    Top = 8
    Width = 145
    Height = 25
    Caption = 'Ler C'#243'digo de Barras'
    TabOrder = 1
    OnClick = btnLerCodigoBarrasClick
  end
  object mmoLeitorQRCode: TMemo
    Left = 342
    Top = 0
    Width = 185
    Height = 242
    Align = alRight
    Lines.Strings = (
      'mmoLeitorQRCode')
    TabOrder = 2
  end
  object btnLerQRCode: TButton
    Left = 191
    Top = 39
    Width = 145
    Height = 25
    Caption = 'Ler QR Code'
    TabOrder = 3
    OnClick = btnLerQRCodeClick
  end
end
