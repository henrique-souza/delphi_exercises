object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Leitor de C'#243'digos de Barra e C'#243'digo QR'
  ClientHeight = 399
  ClientWidth = 749
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object CodigosPagamento: TGroupBox
    Left = 38
    Top = 19
    Width = 673
    Height = 361
    Caption = 'Codigos de Pagamento'
    TabOrder = 0
    object lblCodigoDeBarras: TLabel
      Left = 24
      Top = 45
      Width = 82
      Height = 13
      Caption = 'C'#243'digo de Barras'
    end
    object lblLinhaDigitavel: TLabel
      Left = 24
      Top = 109
      Width = 69
      Height = 13
      Caption = 'Linha Digit'#225'vel'
    end
    object lblQRCODE: TLabel
      Left = 24
      Top = 165
      Width = 43
      Height = 13
      Caption = 'QR Code'
    end
    object edtCodigoDeBarras: TEdit
      Left = 24
      Top = 64
      Width = 273
      Height = 21
      TabOrder = 0
    end
    object edtLinhaDigitavel: TEdit
      Left = 24
      Top = 128
      Width = 273
      Height = 21
      TabOrder = 1
    end
    object edtQRCode: TEdit
      Left = 24
      Top = 184
      Width = 273
      Height = 21
      TabOrder = 2
    end
  end
  object dlgOpenPic1: TOpenPictureDialog
    Left = 366
    Top = 83
  end
end
