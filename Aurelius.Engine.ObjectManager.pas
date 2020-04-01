unit Aurelius.Engine.ObjectManager;

interface

uses
  Aurelius.Drivers.Interfaces;

type
  TObjectManager = class
  public
    constructor Create(const Connection: IDBConnection);

    function Find<T>(const Id: Integer): T;
    procedure SaveOrUpdate(const Obj: TObject);
    procedure Flush;
  end;

implementation

{ TObjectManager }

constructor TObjectManager.Create(const Connection: IDBConnection);
begin

end;

function TObjectManager.Find<T>(const Id: Integer): T;
begin

end;

procedure TObjectManager.Flush;
begin

end;

procedure TObjectManager.SaveOrUpdate(const Obj: TObject);
begin

end;

end.

