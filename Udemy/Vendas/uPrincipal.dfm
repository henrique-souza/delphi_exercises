object formPrincipal: TformPrincipal
  Left = 0
  Top = 0
  Caption = 'Menu Principal'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainPrincipal
  Visible = True
  PixelsPerInch = 96
  TextHeight = 15
  object MainPrincipal: TMainMenu
    Left = 568
    Top = 16
    object a1: TMenuItem
      Caption = 'Cadastro'
      object Cliente1: TMenuItem
        Caption = 'Cliente'
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Categoria1: TMenuItem
        Caption = 'Categoria'
      end
      object Produto1: TMenuItem
        Caption = 'Produto'
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object FecharAplicacao: TMenuItem
        Caption = 'Fechar'
        OnClick = FecharAplicacaoClick
      end
    end
    object MOVIMENTAO1: TMenuItem
      Caption = 'Movimenta'#231#227'o'
      object Vendas1: TMenuItem
        Caption = 'Vendas'
      end
    end
    object MOVIMENTAO2: TMenuItem
      Caption = 'Relat'#243'rios'
      object Cliente2: TMenuItem
        Caption = 'Cliente'
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object N4: TMenuItem
        Caption = 'Produtos'
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object Vendas2: TMenuItem
        Caption = 'Vendas por data'
      end
    end
  end
end
