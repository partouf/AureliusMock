unit Aurelius.Drivers.Interfaces;

interface

uses
  Data.Db, System.Generics.Collections;

type
  TDBParam = class
  public
    constructor Create(const Fieldname: string; const FieldType: TFieldType; const ParamValue: Variant);
  end;

  IDBResultSet = interface
    ['{DC0EEDF3-6C3A-4A82-8DB9-C07582F0B444}']

    function GetFieldValue(const Idx: Integer): Variant;
  end;

  IDBStatement = interface
    ['{1D3D2C79-8126-411F-955F-4834A187D692}']

    procedure SetSQLCommand(const Command: string);
    procedure SetParams(const Params: TList<TDBParam>);
    procedure Execute;
    function ExecuteQuery: IDBResultSet;
  end;

  IDBConnection = interface
    ['{45C8FD18-6E0F-4E40-849A-75943C8A6230}']

    function CreateStatement: IDBStatement;
    procedure Disconnect;
  end;

implementation

{ TDBParam }

constructor TDBParam.Create(const Fieldname: string;
  const FieldType: TFieldType; const ParamValue: Variant);
begin

end;

end.
