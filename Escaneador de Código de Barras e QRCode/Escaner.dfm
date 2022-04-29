object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
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
    Left = 8
    Top = 40
    Width = 185
    Height = 89
    Lines.Strings = (
      'mmo1')
    TabOrder = 0
  end
  object btnLerCodigoBarrasQRCode: TButton
    Left = 208
    Top = 38
    Width = 185
    Height = 25
    Caption = 'Ler C'#243'digo de Barras/QRCode'
    TabOrder = 1
    OnClick = btnLerCodigoBarrasQRCodeClick
  end
end
