object FORM_CONTATOS: TFORM_CONTATOS
  Left = 0
  Top = 0
  Caption = 'GESTAO DE CONTATOS'
  ClientHeight = 252
  ClientWidth = 747
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
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
      
        'Database=C:\Users\hss_h\Documents\Embarcadero\Studio\Projects\GE' +
        'STAO DE CONTATOS\Win32\Debug\assets\contatos.mdb'
      'DriverID=MSAcc')
    Connected = True
    LoginPrompt = False
    Left = 464
    Top = 8
  end
  object BindSourcecontatos: TBindSourceDB
    DataSet = FDTablecontatos
    ScopeMappings = <>
    Left = 608
    Top = 88
  end
  object FDTablecontatos: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = FDConnection1
    TableName = 'contatos'
    Left = 608
    Top = 24
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 468
    Top = 93
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
