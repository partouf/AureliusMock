unit Aurelius.Drivers.FireDac;

interface

uses
  Aurelius.Drivers.Interfaces,
  Firedac.Comp.Client;

type
  TFireDacConnectionAdapter = class(TInterfacedObject, IDBConnection)
  public
    constructor Create(const Connection: TFDConnection; const Something: Boolean);

    function CreateStatement: IDBStatement;
    procedure Disconnect;
  end;

implementation

{ TFireDacConnectionAdapter }

constructor TFireDacConnectionAdapter.Create(const Connection: TFDConnection;
  const Something: Boolean);
begin

end;

function TFireDacConnectionAdapter.CreateStatement: IDBStatement;
begin
  Result := nil;
end;

procedure TFireDacConnectionAdapter.Disconnect;
begin

end;

end.
