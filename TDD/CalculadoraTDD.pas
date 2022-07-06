unit CalculadoraTDD;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFormTDD = class(TForm)
    ButtonSomar: TButton;
    ButtonSubtrair: TButton;
    ButtonDividir: TButton;
    ButtonMultiplicar: TButton;
    EditPrimeiraVariavel: TEdit;
    EditSegundaVariavel: TEdit;
    LabelPrimeiraVariavel: TLabel;
    LabelSegundaVariavel: TLabel;
    LabelOperacoes: TLabel;
    LabelResultado: TLabel;
    EditResultado: TEdit;
    procedure ButtonSomarClick(Sender: TObject);
    procedure ButtonSubtrairClick(Sender: TObject);
    procedure ButtonDividirClick(Sender: TObject);
    procedure ButtonMultiplicarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    function Somar(NumeroUm, NumeroDois: Integer): Integer;
    function Dividir(NumeroUm, NumeroDois: Integer): Double;
    function Subtrair(NumeroUm, NumeroDois: Integer): Double;
    function Multiplicar(NumeroUm, NumeroDois: Integer): Double;
  end;

var
  FormTDD: TFormTDD;

implementation

{$R *.dfm}

var
  Numero1, Numero2: Integer;

procedure TFormTDD.ButtonSubtrairClick(Sender: TObject);
begin
  try
    try
      Numero1 := StrToInt(EditPrimeiraVariavel.Text);

      Numero2 := StrToInt(EditSegundaVariavel.Text);
    except
      on E: Exception do
        ShowMessage(E.Message);
    end;
  finally
    EditResultado.Text := Subtrair(Numero1, Numero2).ToString;
  end;
end;

procedure TFormTDD.ButtonDividirClick(Sender: TObject);
begin
  try
    try
      Numero1 := StrToInt(EditPrimeiraVariavel.Text);

      Numero2 := StrToInt(EditSegundaVariavel.Text);
    except
      on E: Exception do
        ShowMessage(E.Message);
    end;
  finally
    EditResultado.Text := Dividir(Numero1, Numero2).ToString;
  end;
end;

procedure TFormTDD.ButtonMultiplicarClick(Sender: TObject);
begin
  try
    try
      Numero1 := StrToInt(EditPrimeiraVariavel.Text);

      Numero2 := StrToInt(EditSegundaVariavel.Text);
    except
      on E: Exception do
        ShowMessage(E.Message);
    end;
  finally
    EditResultado.Text := Multiplicar(Numero1, Numero2).ToString;
  end;
end;

procedure TFormTDD.ButtonSomarClick(Sender: TObject);
begin
  try
    try
      Numero1 := StrToInt(EditPrimeiraVariavel.Text);

      Numero2 := StrToInt(EditSegundaVariavel.Text);
    except
      on E: Exception do
        ShowMessage(E.Message);
    end;
  finally
    EditResultado.Text := Somar(Numero1, Numero2).ToString;
  end;
end;

function TFormTDD.Somar(NumeroUm, NumeroDois: Integer): Integer;
begin
  Result := NumeroUm + NumeroDois;
end;

function TFormTDD.Dividir(NumeroUm, NumeroDois: Integer): Double;
begin
  Result := NumeroUm / NumeroDois;
end;

function TFormTDD.Subtrair(NumeroUm, NumeroDois: Integer): Double;
begin
  Result := NumeroUm - NumeroDois;
end;

function TFormTDD.Multiplicar(NumeroUm, NumeroDois: Integer): Double;
begin
  Result := NumeroUm * NumeroDois;
end;

end.
