program SpeakAnimal;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

type
  ISpeaker = interface
    ['{05F22DC4-A6E4-4F88-93A5-293D1A295EEC}']
    function Speak: string;

    function GetName: string;
    property animalName: string read GetName;

    function GetAge: Integer;
    property animalAge: Integer read GetAge;
  end;

  TSpeaker = class(TInterfacedObject, ISpeaker)
  private
    FAnimalName: string;
    FAnimalAge: Integer;

    function GetName: string;
    function GetAge: Integer;
  public
    constructor Create(const FName: string; FAge: Integer);
    function Speak: string; virtual; abstract;
  end;

  TDog = class(TSpeaker)
    function Speak: string; override;
  end;

  TCat = class(TSpeaker)
    function Speak: string; override;
  end;

procedure MakeAnimalSpeak(FAnimal: ISpeaker);
begin
  Writeln(Format('%s, quem tem %d ano(s) de idade, disse: %s',
      [FAnimal.animalName, FAnimal.animalAge, FAnimal.Speak]) + sLineBreak);
end;

{ TDog }

function TDog.Speak: string;
begin
  Result := 'Au, au!';
end;

{ TCat }

function TCat.Speak: string;
begin
  Result := 'Miau!';
end;

{ TSpeaker }

constructor TSpeaker.Create(const FName: string; FAge: Integer);
begin
  FAnimalName := FName;

  FAnimalAge := FAge;
end;

function TSpeaker.GetAge: Integer;
begin
  Result := FAnimalAge;
end;

function TSpeaker.GetName: string;
begin
  Result := FAnimalName;
end;

var
  FDog: ISpeaker;
  FCat: ISpeaker;

begin

  try
    FDog := TDog.Create('Belinha', 3);
    FCat := TCat.Create('Bruce', 5);

    MakeAnimalSpeak(FDog);
    MakeAnimalSpeak(FCat);
  except
    on E: Exception do
    begin
      Writeln(E.ClassName, ': ', E.Message);
    end;
  end;

  Readln;

end.
