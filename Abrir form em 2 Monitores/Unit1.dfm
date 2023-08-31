object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnAbrir2Monitores: TButton
    AlignWithMargins = True
    Left = 3
    Top = 173
    Width = 441
    Height = 25
    Align = alBottom
    Caption = 'Abrir form em 2 Monitores'
    TabOrder = 0
    OnClick = btnAbrir2MonitoresClick
    ExplicitLeft = 128
    ExplicitTop = 104
    ExplicitWidth = 161
  end
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 447
    Height = 170
    Align = alClient
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
    ExplicitLeft = 208
    ExplicitTop = 48
    ExplicitWidth = 185
    ExplicitHeight = 89
  end
end
