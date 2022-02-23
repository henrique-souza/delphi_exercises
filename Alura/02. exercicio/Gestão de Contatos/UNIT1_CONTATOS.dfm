object FORM_CONTATOS: TFORM_CONTATOS
  Left = 0
  Top = 0
  Align = alClient
  Caption = 'GESTAO DE CONTATOS'
  ClientHeight = 347
  ClientWidth = 929
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 8
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '1'
  end
  object Edit2: TEdit
    Left = 8
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Ivan'
  end
  object Edit3: TEdit
    Left = 8
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '11654894'
  end
  object Edit4: TEdit
    Left = 8
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'ivan@alura.com'
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\hs.santos\Documents\Embarcadero\Studio\Project' +
        's\Alura\02. exercicio\Gest'#227'o de Contatos\Win32\Debug\assets\cont' +
        'atos.mdb'
      'DriverID=MSAcc')
    LoginPrompt = False
    Left = 368
    Top = 70
  end
  object BindSourcecontatos: TBindSourceDB
    DataSet = FDTablecontatos
    ScopeMappings = <>
    Left = 463
    Top = 220
  end
  object FDTablecontatos: TFDTable
    IndexFieldNames = 'id'
    Connection = FDConnection1
    TableName = 'contatos'
    Left = 252
    Top = 77
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 250
    Top = 133
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourcecontatos
      FieldName = 'id'
      Control = Edit1
      Track = True
    end
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourcecontatos
      FieldName = 'nome'
      Control = Edit2
      Track = True
    end
    object LinkControlToField3: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourcecontatos
      FieldName = 'telefone'
      Control = Edit3
      Track = True
    end
    object LinkControlToField4: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourcecontatos
      FieldName = 'email'
      Control = Edit4
      Track = True
    end
  end
end
