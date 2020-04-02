unit Aurelius.Criteria.Dictionary;

interface

type
  TDictionaryAttribute = class
  public
    constructor Create(const Value: string);
  end;

  TDictionaryAssociation = class
  private
    FAssociationName: string;
  public
    constructor Create(const Value: string);

    property AssociationName: string read FAssociationName write FAssociationName;
  end;

implementation

{ TDictionaryAttribute }

constructor TDictionaryAttribute.Create(const Value: string);
begin

end;

{ TDictionaryAssociation }

constructor TDictionaryAssociation.Create(const Value: string);
begin
  FAssociationName := Value;
end;

end.

