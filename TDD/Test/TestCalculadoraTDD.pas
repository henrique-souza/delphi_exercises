unit TestCalculadoraTDD;
{

  Delphi DUnit Test Case
  ----------------------
  This unit contains a skeleton test case class generated by the Test Case Wizard.
  Modify the generated code to correctly setup and call the methods from the unit
  being tested.

}

interface

uses
  TestFramework, Vcl.Dialogs, Winapi.Windows, CalculadoraTDD, Vcl.Graphics,
  System.Variants, Winapi.Messages, Vcl.StdCtrls, System.SysUtils, Vcl.Controls,
  Vcl.Forms, System.Classes;

type
  // Test methods for class TFormTDD

  TestTFormTDD = class(TTestCase)
  strict private
    FFormTDD: TFormTDD;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestSomar;
    procedure TestDividir;
    procedure TestSubtrair;
    procedure TestMultiplicar;
  end;

implementation

procedure TestTFormTDD.SetUp;
begin
// Erro aqui, verificar.
  FFormTDD := TFormTDD.Create;
end;

procedure TestTFormTDD.TearDown;
begin
  FFormTDD.Free;
  FFormTDD := nil;
end;

procedure TestTFormTDD.TestSomar;
var
  ReturnValue: Integer;
  NumeroDois: Integer;
  NumeroUm: Integer;
begin
  NumeroUm := -2;
  NumeroDois := -2;

  ReturnValue := FFormTDD.Somar(NumeroUm, NumeroDois);

  CheckEquals(-4, ReturnValue, 'A fun��o somar falhou.');
end;

procedure TestTFormTDD.TestDividir;
var
  ReturnValue: Double;
  NumeroDois: Integer;
  NumeroUm: Integer;
begin
  // TODO: Setup method call parameters
  ReturnValue := FFormTDD.Dividir(NumeroUm, NumeroDois);
  // TODO: Validate method results
end;

procedure TestTFormTDD.TestSubtrair;
var
  ReturnValue: Double;
  NumeroDois: Integer;
  NumeroUm: Integer;
begin
  // TODO: Setup method call parameters
  ReturnValue := FFormTDD.Subtrair(NumeroUm, NumeroDois);
  // TODO: Validate method results
end;

procedure TestTFormTDD.TestMultiplicar;
var
  ReturnValue: Double;
  NumeroDois: Integer;
  NumeroUm: Integer;
begin
  // TODO: Setup method call parameters
  ReturnValue := FFormTDD.Multiplicar(NumeroUm, NumeroDois);
  // TODO: Validate method results
end;

initialization

// Register any test cases with the test runner
RegisterTest(TestTFormTDD.Suite);

end.
