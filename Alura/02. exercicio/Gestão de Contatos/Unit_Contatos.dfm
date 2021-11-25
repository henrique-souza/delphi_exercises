object Contatos: TContatos
  Left = 0
  Top = 0
  Caption = 'Gest'#227'o de Contatos'
  ClientHeight = 276
  ClientWidth = 612
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\hss_h\OneDrive\UVA\exercicios_faculdade\delphi' +
        '_exercises\Alura\02. exercicio\Gest'#227'o de Contatos\Win32\Debug\as' +
        'sets\contatos.mdb'
      'DriverID=MSAcc')
    LoginPrompt = False
    Left = 296
    Top = 176
  end
end
