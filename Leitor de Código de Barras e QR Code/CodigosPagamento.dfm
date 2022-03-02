object frmLeitorCodigosBarraCodigoQR: TfrmLeitorCodigosBarraCodigoQR
  Left = 0
  Top = 0
  AutoSize = True
  Caption = 'Leitor de C'#243'digos de Barra e C'#243'digo QR'
  ClientHeight = 361
  ClientWidth = 673
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Visible = True
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object grpCodigosPagamento: TGroupBox
    Left = 0
    Top = 0
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
    object grpLerImagemCodigoBarrasQR: TGroupBox
      Left = 320
      Top = 17
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
    object btnSelecionarImagem: TButton
      Left = 352
      Top = 54
      Width = 129
      Height = 41
      Caption = 'Selecionar Imagem'
      TabOrder = 3
      OnClick = btnSelecionarImagemClick
    end
  end
end
