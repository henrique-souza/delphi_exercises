object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
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
  object Memo1: TMemo
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 618
    Height = 174
    Align = alTop
    Lines.Strings = (
      
        'RB1  Flexible Rate BB 1 pers. ISS. ISS. Bar Alimento. ISS. ISS. ' +
        'Bar Bebidas. Desconto de Diaria. ISS. HOSPEDE : MATUO '
      
        'TOMAS KANASHIRO / CONFIRMACAO : MHTSKBKK / CHECK-IN : 26/04/2023' +
        ' / CHECK-OUT : 28/04/2023 / '
      'HOSPEDAGEM R$ : 357.20 / ALIMENTACAO R$ : 14.00')
    TabOrder = 0
  end
  object Button1: TButton
    AlignWithMargins = True
    Left = 3
    Top = 183
    Width = 618
    Height = 35
    Align = alClient
    Caption = 'Remover itens e valores'
    TabOrder = 1
    OnClick = Button1Click
    ExplicitTop = 178
    ExplicitHeight = 45
  end
  object Memo2: TMemo
    AlignWithMargins = True
    Left = 3
    Top = 224
    Width = 618
    Height = 214
    Align = alBottom
    Lines.Strings = (
      'Memo2')
    TabOrder = 2
  end
end
