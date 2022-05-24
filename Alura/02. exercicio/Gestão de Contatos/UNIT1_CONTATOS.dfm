object FORM_CONTATOS: TFORM_CONTATOS
  Left = 0
  Top = 0
  Align = alClient
  Caption = 'Gest'#227'o de Contratos'
  ClientHeight = 342
  ClientWidth = 769
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 13
  object Identificacao: TLabel
    Left = 16
    Top = 21
    Width = 135
    Height = 29
    Caption = 'Identifica'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Nome: TLabel
    Left = 16
    Top = 78
    Width = 62
    Height = 29
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Telefone: TLabel
    Left = 16
    Top = 134
    Width = 92
    Height = 29
    Caption = 'Telefone'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Email: TLabel
    Left = 16
    Top = 185
    Width = 65
    Height = 29
    Caption = 'E-mail'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object caixaIdentificacao: TEdit
    Left = 192
    Top = 21
    Width = 289
    Height = 37
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Text = '1'
  end
  object caixaDeNome: TEdit
    Left = 192
    Top = 80
    Width = 289
    Height = 37
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Text = 'Ivan'
  end
  object caixaTelefone: TEdit
    Left = 192
    Top = 131
    Width = 289
    Height = 37
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Text = '11654894'
  end
  object caixaEmail: TEdit
    Left = 192
    Top = 182
    Width = 289
    Height = 37
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Text = 'ivan@alura.com'
  end
  object DBNavigator1: TDBNavigator
    AlignWithMargins = True
    Left = 3
    Top = 289
    Width = 763
    Height = 50
    DataSource = DataSource1
    Align = alBottom
    TabOrder = 4
    ExplicitLeft = 191
    ExplicitTop = 240
    ExplicitWidth = 290
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\hs.santos\Documents\Embarcadero\Studio\Project' +
        's\Alura\02. exercicio\Gest'#227'o de Contatos\Win32\Debug\assets\cont' +
        'atos.mdb'
      'DriverID=MSAcc')
    Connected = True
    LoginPrompt = False
    Left = 564
    Top = 18
  end
  object BindSourcecontatos: TBindSourceDB
    DataSet = FDTablecontatos
    ScopeMappings = <>
    Left = 558
    Top = 135
  end
  object FDTablecontatos: TFDTable
    IndexFieldNames = 'id'
    Connection = FDConnection1
    TableName = 'contatos'
    Left = 700
    Top = 10
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 694
    Top = 99
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourcecontatos
      FieldName = 'id'
      Control = caixaIdentificacao
      Track = True
    end
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourcecontatos
      FieldName = 'nome'
      Control = caixaDeNome
      Track = True
    end
    object LinkControlToField3: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourcecontatos
      FieldName = 'telefone'
      Control = caixaTelefone
      Track = True
    end
    object LinkControlToField4: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourcecontatos
      FieldName = 'email'
      Control = caixaEmail
      Track = True
    end
  end
  object DataSource1: TDataSource
    DataSet = FDTablecontatos
    Left = 652
    Top = 100
  end
end
