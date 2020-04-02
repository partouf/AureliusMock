unit Aurelius.Engine.ObjectManager;

interface

uses
  Aurelius.Drivers.Interfaces,
  Aurelius.Criteria.Base;

type
  TObjectManager = class
  private
    FOwnsObjects: Boolean;
  public
    constructor Create(const Connection: IDBConnection);

    function Find<T>(const Id: Integer): T; overload;
    function Find<T>: TCriteria<T>; overload;
    procedure SaveOrUpdate(const Obj: TObject);
    procedure Flush;

    property OwnsObjects: Boolean read FOwnsObjects write FOwnsObjects;
  end;

implementation

{ TObjectManager }

constructor TObjectManager.Create(const Connection: IDBConnection);
begin

end;

function TObjectManager.Find<T>(const Id: Integer): T;
begin
end;

function TObjectManager.Find<T>: TCriteria<T>;
begin
  Result := nil;
end;

procedure TObjectManager.Flush;
begin

end;

procedure TObjectManager.SaveOrUpdate(const Obj: TObject);
begin

end;

end.

