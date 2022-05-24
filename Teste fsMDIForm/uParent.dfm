object frmParent: TfrmParent
  Left = 0
  Top = 0
  Caption = 'FormParent'
  ClientHeight = 242
  ClientWidth = 527
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = mmParent
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object mmParent: TMainMenu
    Left = 120
    Top = 40
    object mniOpenChildForm1: TMenuItem
      Caption = 'Open Child Form'
      OnClick = mniOpenChildForm1Click
    end
  end
end
