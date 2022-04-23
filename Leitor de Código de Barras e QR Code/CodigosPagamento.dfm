object frmLeitorCodigosBarraCodigoQR: TfrmLeitorCodigosBarraCodigoQR
  Left = 0
  Top = 0
  Caption = 'Leitor de C'#243'digos de Barra e C'#243'digo QR'
  ClientHeight = 339
  ClientWidth = 646
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object grpCodigosPagamento: TGroupBox
    Left = 0
    Top = 0
    Width = 646
    Height = 339
    Align = alClient
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
      Top = 91
      Width = 69
      Height = 13
      Caption = 'Linha Digit'#225'vel'
    end
    object lblQRCODE: TLabel
      Left = 24
      Top = 137
      Width = 43
      Height = 13
      Caption = 'QR Code'
    end
    object grpLerImagemCodigoBarrasQR: TGroupBox
      Left = 320
      Top = 16
      Width = 185
      Height = 105
      Caption = 'Deseja fazer upload de Imagem?'
      Color = clBtnFace
      Ctl3D = True
      ParentBackground = False
      ParentColor = False
      ParentCtl3D = False
      TabOrder = 4
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
      Top = 110
      Width = 273
      Height = 21
      TabOrder = 1
    end
    object edtQRCode: TEdit
      Left = 24
      Top = 156
      Width = 273
      Height = 21
      MaxLength = 4296
      NumbersOnly = True
      TabOrder = 2
    end
    object btnSelecionarImagem: TButton
      Left = 352
      Top = 56
      Width = 129
      Height = 41
      Caption = 'Selecionar Imagem'
      TabOrder = 3
      OnClick = btnSelecionarImagemClick
    end
  end
end
