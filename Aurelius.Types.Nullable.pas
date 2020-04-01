unit Aurelius.Types.Nullable;

interface

type
  Nullable<T> = record
  private
    FValue: T;
    FHasValue: Boolean;
    function GetValue: T;
    procedure SetValue(const Value: T);
    function GetValueOrDefault: T;
  public
    constructor Create(const Value: T);

    class operator Implicit(val: T): Nullable<T>;
    class operator Implicit(val: Nullable<T>): T;
    class operator Explicit(val: T): Nullable<T>;
    class operator GreaterThan(const a: Nullable<T>; const b: Double): Boolean;
    class operator GreaterThanOrEqual(const a: Nullable<T>; const b: Double): Boolean;
    class operator LessThan(const a: Nullable<T>; const b: Double): Boolean;

    property Value: T read GetValue write SetValue;
    property ValueOrDefault: T read GetValueOrDefault;
  end;

  function SNull: Variant;

implementation

uses Variants;

{ Nullable<T> }

function SNull: Variant;
begin
  Result := Null;
end;

constructor Nullable<T>.Create(const Value: T);
begin
  FHasValue := True;
  FValue := Value;
end;

class operator Nullable<T>.GreaterThan(const a: Nullable<T>; const b: Double): Boolean;
begin
  Result := False;
end;

class operator Nullable<T>.GreaterThanOrEqual(const a: Nullable<T>;
  const b: Double): Boolean;
begin
  Result := False;
end;

class operator Nullable<T>.Explicit(val: T): Nullable<T>;
begin
  Result := Nullable<T>.Create(val);
end;

function Nullable<T>.GetValue: T;
begin
  Result := FValue;
end;

function Nullable<T>.GetValueOrDefault: T;
begin
  Result := FValue;
end;

class operator Nullable<T>.Implicit(val: Nullable<T>): T;
begin
  Result := val.Value;
end;

class operator Nullable<T>.LessThan(const a: Nullable<T>;
  const b: Double): Boolean;
begin
  Result := False;
end;

class operator Nullable<T>.Implicit(val: T): Nullable<T>;
begin
  Result := Nullable<T>.Create(val);
end;

procedure Nullable<T>.SetValue(const Value: T);
begin
  FValue := Value;
end;

end.

