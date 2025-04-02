unit test1;

interface

// *********************************** 
//   classes for test1.proto
//   generated by ProtoBufGenerator 
//        kami-soft 2016-2017
// ***********************************

uses
  Types,
  SysUtils,
  Classes,
  pbInput,
  pbOutput,
  pbPublic,
  uAbstractProtoBufClasses;

type
  //enumeration
  TEnumG0=(
    g1 = 1,  //enum value 1
    g2 = 2
  );

  //field of message type
  TNestedMsg0 = class(TAbstractProtoBufClass)
  public
    const tag_NestedField1 = 1;
  strict private
    FNestedField1: Integer;

    procedure SetNestedField1(Tag: Integer; const Value: Integer);
  strict protected
    function LoadSingleFieldFromBuf(ProtoBuf: TProtoBufInput; FieldNumber: Integer; WireType: Integer): Boolean; override;
    procedure SaveFieldsToBuf(ProtoBuf: TProtoBufOutput); override;
  public
    property NestedField1: Integer index tag_NestedField1 read FNestedField1 write SetNestedField1;
  end;

  TTestMsg0 = class(TAbstractProtoBufClass)
  public
  strict private

  strict protected
    function LoadSingleFieldFromBuf(ProtoBuf: TProtoBufInput; FieldNumber: Integer; WireType: Integer): Boolean; override;
    procedure SaveFieldsToBuf(ProtoBuf: TProtoBufOutput); override;
  public
  end;

  TTestMsg1 = class(TAbstractProtoBufClass)
  public
    const tag_DefField1 = 1;
    const tag_DefField2 = 2;
    const tag_DefField3 = 3;
    const tag_DefField4 = 4;
    const tag_DefField5 = 5;
    const tag_DefField6 = 6;
    const tag_DefField7 = 7;
    const tag_DefField8 = 8;
    const tag_DefField9 = 9;
    const tag_FieldMsg1 = 20;
    const tag_FieldArr1List = 40;
    const tag_FieldArr2List = 41;
    const tag_FieldArr3List = 42;
    const tag_FieldMArr2List = 44;
  strict private
    FDefField1: Integer;
    FDefField2: Int64;
    FDefField3: string;
    FDefField4: Double;
    FDefField5: Boolean;
    FDefField6: TEnumG0;
    FDefField7: Int64;
    FDefField8: DWORD;
    FDefField9: Single;
    FFieldMsg1: TTestMsg0;
    FFieldArr1List: TPBList<Integer>;
    FFieldArr2List: TPBList<Integer>;
    FFieldArr3List: TPBList<string>;
    FFieldMArr2List: TProtoBufClassList<TNestedMsg0>;

    procedure SetDefField1(Tag: Integer; const Value: Integer);
    procedure SetDefField2(Tag: Integer; const Value: Int64);
    procedure SetDefField3(Tag: Integer; const Value: string);
    procedure SetDefField4(Tag: Integer; const Value: Double);
    procedure SetDefField5(Tag: Integer; const Value: Boolean);
    procedure SetDefField6(Tag: Integer; const Value: TEnumG0);
    procedure SetDefField7(Tag: Integer; const Value: Int64);
    procedure SetDefField8(Tag: Integer; const Value: DWORD);
    procedure SetDefField9(Tag: Integer; const Value: Single);
  strict protected
    function LoadSingleFieldFromBuf(ProtoBuf: TProtoBufInput; FieldNumber: Integer; WireType: Integer): Boolean; override;
    procedure SaveFieldsToBuf(ProtoBuf: TProtoBufOutput); override;
  public
    constructor Create; override;
    destructor Destroy; override;

    //fields with defaults
    property DefField1: Integer index tag_DefField1 read FDefField1 write SetDefField1 default 2;
    property DefField2: Int64 index tag_DefField2 read FDefField2 write SetDefField2 default -1;
    property DefField3: string index tag_DefField3 read FDefField3 write SetDefField3; // default 'yes ''"it is';
    property DefField4: Double index tag_DefField4 read FDefField4 write SetDefField4; // default 1.1;
    property DefField5: Boolean index tag_DefField5 read FDefField5 write SetDefField5; // default true;
    property DefField6: TEnumG0 index tag_DefField6 read FDefField6 write SetDefField6 default g2;
    property DefField7: Int64 index tag_DefField7 read FDefField7 write SetDefField7 default 100;
    property DefField8: DWORD index tag_DefField8 read FDefField8 write SetDefField8 default 1;
    property DefField9: Single index tag_DefField9 read FDefField9 write SetDefField9; // default 1.23e1;
    property FieldMsg1: TTestMsg0 read FFieldMsg1;
    //repeated fields
    property FieldArr1List: TPBList<Integer> read FFieldArr1List;
    property FieldArr2List: TPBList<Integer> read FFieldArr2List;
    property FieldArr3List: TPBList<string> read FFieldArr3List;
    property FieldMArr2List: TProtoBufClassList<TNestedMsg0> read FFieldMArr2List;
  end;

implementation

{ TNestedMsg0 }

function TNestedMsg0.LoadSingleFieldFromBuf(ProtoBuf: TProtoBufInput; FieldNumber: Integer; WireType: Integer): Boolean;
begin
  Result := inherited;
  if Result then
    Exit;
  Result := True;
  case FieldNumber of
    tag_NestedField1:
      NestedField1 := ProtoBuf.readInt32;
  else
    Result := False;
  end;
end;

procedure TNestedMsg0.SaveFieldsToBuf(ProtoBuf: TProtoBufOutput);
begin
  inherited;
  if FieldHasValue[tag_NestedField1] then
    ProtoBuf.writeInt32(tag_NestedField1, FNestedField1);
end;

procedure TNestedMsg0.SetNestedField1(Tag: Integer; const Value: Integer);
begin
  FNestedField1:= Value;
  FieldHasValue[Tag]:= True;
end;

{ TTestMsg0 }

function TTestMsg0.LoadSingleFieldFromBuf(ProtoBuf: TProtoBufInput; FieldNumber: Integer; WireType: Integer): Boolean;
begin
  Result := inherited;
end;
procedure TTestMsg0.SaveFieldsToBuf(ProtoBuf: TProtoBufOutput);
begin
  inherited;
end;

{ TTestMsg1 }

constructor TTestMsg1.Create;
begin
  inherited;
  DefField1 := 2;
  DefField2 := -1;
  RegisterRequiredField(tag_DefField2);
  DefField3 := 'yes ''"it is';
  DefField4 := 1.1;
  DefField5 := true;
  DefField6 := g2;
  DefField7 := 100;
  DefField8 := 1;
  DefField9 := 1.23e1;
  FFieldMsg1 := TTestMsg0.Create;
  FFieldArr1List := TPBList<Integer>.Create;
  FFieldArr2List := TPBList<Integer>.Create;
  FFieldArr3List := TPBList<string>.Create;
  FFieldMArr2List := TProtoBufClassList<TNestedMsg0>.Create;
end;

destructor TTestMsg1.Destroy;
begin
  FFieldMsg1.Free;
  FFieldArr1List.Free;
  FFieldArr2List.Free;
  FFieldArr3List.Free;
  FFieldMArr2List.Free;
  inherited;
end;

function TTestMsg1.LoadSingleFieldFromBuf(ProtoBuf: TProtoBufInput; FieldNumber: Integer; WireType: Integer): Boolean;
var
  tmpBuf: TProtoBufInput;
begin
  Result := inherited;
  if Result then
    Exit;
  Result := True;
  tmpBuf:= nil;
  try
    case FieldNumber of
      tag_DefField1:
        DefField1 := ProtoBuf.readInt32;
      tag_DefField2:
        DefField2 := ProtoBuf.readInt64;
      tag_DefField3:
        DefField3 := ProtoBuf.readString;
      tag_DefField4:
        DefField4 := ProtoBuf.readDouble;
      tag_DefField5:
        DefField5 := ProtoBuf.readBoolean;
      tag_DefField6:
        DefField6 := TEnumG0(ProtoBuf.readEnum);
      tag_DefField7:
        DefField7 := ProtoBuf.readSInt64;
      tag_DefField8:
        DefField8 := ProtoBuf.readFixed32;
      tag_DefField9:
        DefField9 := ProtoBuf.readFloat;
      tag_FieldMsg1:
        begin
          tmpBuf := ProtoBuf.ReadSubProtoBufInput;
          FFieldMsg1.LoadFromBuf(tmpBuf);
        end;
      tag_FieldArr1List:
        FFieldArr1List.Add(ProtoBuf.readInt32);
      tag_FieldArr2List:
        begin
          if WireType = WIRETYPE_LENGTH_DELIMITED then
          begin
            tmpBuf:=ProtoBuf.ReadSubProtoBufInput;
            while tmpBuf.getPos < tmpBuf.BufSize do
              FFieldArr2List.Add(tmpBuf.readRawVarint32);
          end else
            FFieldArr2List.Add(ProtoBuf.readRawVarint32);
        end;
      tag_FieldArr3List:
        FFieldArr3List.Add(ProtoBuf.readString);
      tag_FieldMArr2List:
        FFieldMArr2List.AddFromBuf(ProtoBuf, fieldNumber);
    else
      Result := False;
    end;
  finally
    tmpBuf.Free
  end;
end;

procedure TTestMsg1.SaveFieldsToBuf(ProtoBuf: TProtoBufOutput);
var
  tmpBuf: TProtoBufOutput;
  i: Integer;
begin
  inherited;
  tmpBuf:= TProtoBufOutput.Create;
  try
    if FieldHasValue[tag_DefField1] then
      ProtoBuf.writeInt32(tag_DefField1, FDefField1);
    if FieldHasValue[tag_DefField2] then
      ProtoBuf.writeInt64(tag_DefField2, FDefField2);
    if FieldHasValue[tag_DefField3] then
      ProtoBuf.writeString(tag_DefField3, FDefField3);
    if FieldHasValue[tag_DefField4] then
      ProtoBuf.writeDouble(tag_DefField4, FDefField4);
    if FieldHasValue[tag_DefField5] then
      ProtoBuf.writeBoolean(tag_DefField5, FDefField5);
    if FieldHasValue[tag_DefField6] then
      ProtoBuf.writeInt32(tag_DefField6, Integer(FDefField6));
    if FieldHasValue[tag_DefField7] then
      ProtoBuf.writeSInt64(tag_DefField7, FDefField7);
    if FieldHasValue[tag_DefField8] then
      ProtoBuf.writeFixed32(tag_DefField8, FDefField8);
    if FieldHasValue[tag_DefField9] then
      ProtoBuf.writeFloat(tag_DefField9, FDefField9);
    if FieldHasValue[tag_FieldMsg1] then
      SaveMessageFieldToBuf(FFieldMsg1, tag_FieldMsg1, tmpBuf, ProtoBuf);
    if FieldHasValue[tag_FieldArr1List] then
      for i := 0 to FFieldArr1List.Count-1 do
        ProtoBuf.writeInt32(tag_FieldArr1List, FFieldArr1List[i]);
    if FieldHasValue[tag_FieldArr2List] then
    begin
      tmpBuf.Clear;
      for i := 0 to FFieldArr2List.Count-1 do
        tmpBuf.writeRawVarint32(FFieldArr2List[i]);
      ProtoBuf.writeMessage(tag_FieldArr2List, tmpBuf);
    end;
    if FieldHasValue[tag_FieldArr3List] then
      for i := 0 to FFieldArr3List.Count-1 do
        ProtoBuf.writeString(tag_FieldArr3List, FFieldArr3List[i]);
    if FieldHasValue[tag_FieldMArr2List] then
      FFieldMArr2List.SaveToBuf(ProtoBuf, tag_FieldMArr2List);
  finally
    tmpBuf.Free
  end;
end;

procedure TTestMsg1.SetDefField1(Tag: Integer; const Value: Integer);
begin
  FDefField1:= Value;
  FieldHasValue[Tag]:= True;
end;

procedure TTestMsg1.SetDefField2(Tag: Integer; const Value: Int64);
begin
  FDefField2:= Value;
  FieldHasValue[Tag]:= True;
end;

procedure TTestMsg1.SetDefField3(Tag: Integer; const Value: string);
begin
  FDefField3:= Value;
  FieldHasValue[Tag]:= True;
end;

procedure TTestMsg1.SetDefField4(Tag: Integer; const Value: Double);
begin
  FDefField4:= Value;
  FieldHasValue[Tag]:= True;
end;

procedure TTestMsg1.SetDefField5(Tag: Integer; const Value: Boolean);
begin
  FDefField5:= Value;
  FieldHasValue[Tag]:= True;
end;

procedure TTestMsg1.SetDefField6(Tag: Integer; const Value: TEnumG0);
begin
  FDefField6:= Value;
  FieldHasValue[Tag]:= True;
end;

procedure TTestMsg1.SetDefField7(Tag: Integer; const Value: Int64);
begin
  FDefField7:= Value;
  FieldHasValue[Tag]:= True;
end;

procedure TTestMsg1.SetDefField8(Tag: Integer; const Value: DWORD);
begin
  FDefField8:= Value;
  FieldHasValue[Tag]:= True;
end;

procedure TTestMsg1.SetDefField9(Tag: Integer; const Value: Single);
begin
  FDefField9:= Value;
  FieldHasValue[Tag]:= True;
end;

end.
