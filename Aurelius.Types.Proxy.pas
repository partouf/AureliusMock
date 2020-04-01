unit Aurelius.Types.Proxy;

interface

type
  Proxy<T> = class
  private
    FValue: T;
  public
    property Value: T read FValue write FValue;

    procedure SetInitialValue(const Value: T);
    procedure DestroyValue;
  end;

implementation

{ Proxy<T> }

procedure Proxy<T>.DestroyValue;
begin

end;

procedure Proxy<T>.SetInitialValue(const Value: T);
begin
  FValue := Value;
end;

end.

