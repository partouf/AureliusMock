unit Aurelius.Engine.ObjectManager;

interface

uses
  Aurelius.Drivers.Interfaces;

type
  TObjectManager = class
  public
    constructor Create(const Connection: IDBConnection);
  end;

implementation

{ TObjectManager }

constructor TObjectManager.Create(const Connection: IDBConnection);
begin

end;

end.

