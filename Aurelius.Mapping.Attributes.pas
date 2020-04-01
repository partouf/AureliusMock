unit Aurelius.Mapping.Attributes;

interface

type
  EntityAttribute = class(TCustomAttribute)
  public
  end;

  UniqueKeyAttribute = class(TCustomAttribute)
  public
    constructor Create(const Value: string);
  end;

  TableAttribute = class(TCustomAttribute)
  public
    constructor Create(const Value: string);
  end;

  {$SCOPEDENUMS ON}
  TIdGenerator = (
    None = 0,
    IdentityOrSequence  = 1
  );

  TColumnProp = (
    None = 0,
    Required = 1,
    Lazy = 2,
    NoInsert = 3,
    NoUpdate = 4
  );

  TAssociationProp = (
    None = 0,
    Required = 1,
    Lazy = 2
  );

  TCascadeType = (
    None = 0,
    SaveUpdate = 1,
    Merge = 2,
    Remove = 3
  );

  TEnumMappingType = (
    emString
  );
  {$SCOPEDENUMS OFF}

  TColumnProperties = set of TColumnProp;
  TAssociationProperties = set of TAssociationProp;
  TCascadeTypes = set of TCascadeType;

  IdAttribute = class(TCustomAttribute)
  public
    constructor Create(const IdName: string; const Generator: TIdGenerator);
  end;

  ColumnAttribute = class(TCustomAttribute)
  public
    constructor Create(const Fieldname: string; const Props: TColumnProperties; const Length: Integer = 0; const Something: Integer = 0);
  end;

  SequenceAttribute = class(TCustomAttribute)
  public
    constructor Create(const SequenceName: string);
  end;

  AssociationAttribute = class(TCustomAttribute)
  public
    constructor Create(const AssociationProperties: TAssociationProperties; const Something: TCascadeTypes);
  end;

  ManyValuedAssociationAttribute = class(TCustomAttribute)
  public
    constructor Create(const AssociationProperties: TAssociationProperties; const Cascade: TCascadeTypes; const Something: string);
  end;

  JoinColumnAttribute = class(TCustomAttribute)
  public
    constructor Create(const Fieldname: string; const Props: TColumnProperties; const OtherField: string);
  end;

  DBTypeMemoAttribute = class(TCustomAttribute)
  public
  end;

  EnumerationAttribute = class(TCustomAttribute)
  public
    constructor Create(const MappingType: TEnumMappingType; const Values: string);
  end;

implementation

constructor UniqueKeyAttribute.Create(const Value: string);
begin

end;

constructor TableAttribute.Create(const Value: string);
begin

end;

constructor IdAttribute.Create(const IdName: string; const Generator: TIdGenerator);
begin

end;

constructor ColumnAttribute.Create(const Fieldname: string; const Props: TColumnProperties; const Length: Integer = 0; const Something: Integer = 0);
begin

end;

constructor SequenceAttribute.Create(const SequenceName: string);
begin

end;

constructor AssociationAttribute.Create(const AssociationProperties: TAssociationProperties; const Something: TCascadeTypes);
begin

end;

constructor ManyValuedAssociationAttribute.Create(const AssociationProperties: TAssociationProperties; const Cascade: TCascadeTypes; const Something: string);
begin

end;

constructor JoinColumnAttribute.Create(const Fieldname: string; const Props: TColumnProperties; const OtherField: string);
begin

end;

constructor EnumerationAttribute.Create(const MappingType: TEnumMappingType; const Values: string);
begin

end;

end.
