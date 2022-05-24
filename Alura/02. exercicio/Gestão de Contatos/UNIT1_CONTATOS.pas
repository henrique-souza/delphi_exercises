unit UNIT1_CONTATOS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.MSAcc, FireDAC.Phys.MSAccDef,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Vcl.StdCtrls, FireDAC.Comp.DataSet,
  Data.Bind.DBScope, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TFORM_CONTATOS = class(TForm)
    FDConnection1: TFDConnection;
    BindSourcecontatos: TBindSourceDB;
    FDTablecontatos: TFDTable;
    caixaIdentificacao: TEdit;
    caixaDeNome: TEdit;
    caixaTelefone: TEdit;
    caixaEmail: TEdit;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    Identificacao: TLabel;
    Nome: TLabel;
    Telefone: TLabel;
    Email: TLabel;
    DBNavigator1: TDBNavigator;
    DataSource1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FORM_CONTATOS: TFORM_CONTATOS;

implementation

{$R *.dfm}

end.
