(*
* Copyright (c) 2011, Ciobanu Alexandru
* All rights reserved.
*
* Redistribution and use in source and binary forms, with or without
* modification, are permitted provided that the following conditions are met:
*     * Redistributions of source code must retain the above copyright
*       notice, this list of conditions and the following disclaimer.
*     * Redistributions in binary form must reproduce the above copyright
*       notice, this list of conditions and the following disclaimer in the
*       documentation and/or other materials provided with the distribution.
*     * Neither the name of the <organization> nor the
*       names of its contributors may be used to endorse or promote products
*       derived from this software without specific prior written permission.
*
* THIS SOFTWARE IS PROVIDED BY THE AUTHOR ''AS IS'' AND ANY
* EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
* WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
* DISCLAIMED. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
* DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
* (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
* LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
* ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
* (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
* SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*)

unit Tests.Conformance.BidiMaps;
interface
uses SysUtils,
     Tests.Conformance.Base,
     TestFramework,
     Generics.Collections,
     Collections.Base,
     Collections.BidiMaps;

type
  // TODO: Implement this test class
  TConformance_TBidiMap = class(TConformance_IBidiMap)
  protected
    procedure SetUp_IBidiMap(out AEmpty, AOne, AFull: IBidiMap<NativeInt, NativeInt>; out APairs: TPairs; out AKeyOrdering: TOrdering); override;
  published
  end;

  // TODO: Implement this test class
  TConformance_TSortedBidiMap = class(TConformance_IBidiMap)
  protected
    procedure SetUp_IBidiMap(out AEmpty, AOne, AFull: IBidiMap<NativeInt, NativeInt>; out APairs: TPairs; out AKeyOrdering: TOrdering); override;
  published
  end;

  // TODO: Implement this test class
  TConformance_TDoubleSortedBidiMap = class(TConformance_IBidiMap)
  protected
    procedure SetUp_IBidiMap(out AEmpty, AOne, AFull: IBidiMap<NativeInt, NativeInt>; out APairs: TPairs; out AKeyOrdering: TOrdering); override;
  published
  end;

type
  // TODO: Implement this test class
  TConformance_TBidiMap_Keys = class(TConformance_ISequence)
  protected
    procedure SetUp_ISequence(out AEmpty, AOne, AFull: ISequence<NativeInt>; out AElements: TElements; out AOrdering: TOrdering); override;
  published
  end;

  // TODO: Implement this test class
  TConformance_TBidiMap_Values = class(TConformance_ISequence)
  protected
    procedure SetUp_ISequence(out AEmpty, AOne, AFull: ISequence<NativeInt>; out AElements: TElements; out AOrdering: TOrdering); override;
  published
  end;

  // TODO: Implement this test class
  TConformance_TSortedBidiMap_Keys = class(TConformance_ISequence)
  protected
    procedure SetUp_ISequence(out AEmpty, AOne, AFull: ISequence<NativeInt>; out AElements: TElements; out AOrdering: TOrdering); override;
  published
  end;

  // TODO: Implement this test class
  TConformance_TSortedBidiMap_Values = class(TConformance_ISequence)
  protected
    procedure SetUp_ISequence(out AEmpty, AOne, AFull: ISequence<NativeInt>; out AElements: TElements; out AOrdering: TOrdering); override;
  published
  end;

  // TODO: Implement this test class
  TConformance_TDoubleSortedBidiMap_Keys = class(TConformance_ISequence)
  protected
    procedure SetUp_ISequence(out AEmpty, AOne, AFull: ISequence<NativeInt>; out AElements: TElements; out AOrdering: TOrdering); override;
  published
  end;

  // TODO: Implement this test class
  TConformance_TDoubleSortedBidiMap_Values = class(TConformance_ISequence)
  protected
    procedure SetUp_ISequence(out AEmpty, AOne, AFull: ISequence<NativeInt>; out AElements: TElements; out AOrdering: TOrdering); override;
  published
  end;


implementation

{ TConformance_TBidiMap }

procedure TConformance_TBidiMap.SetUp_IBidiMap(out AEmpty, AOne,
  AFull: IBidiMap<NativeInt, NativeInt>; out APairs: TPairs;
  out AKeyOrdering: TOrdering);
begin
  // TODO: Set maps up correctly
  AEmpty := TBidiMap<NativeInt,NativeInt>.Create;
  AOne := TBidiMap<NativeInt,NativeInt>.Create;
  AFull := TBidiMap<NativeInt,NativeInt>.Create;
  SetLength(APairs, 0);
  AKeyOrdering := oNone;
end;

{ TConformance_TSortedBidiMap }

procedure TConformance_TSortedBidiMap.SetUp_IBidiMap(out AEmpty, AOne,
  AFull: IBidiMap<NativeInt, NativeInt>; out APairs: TPairs;
  out AKeyOrdering: TOrdering);
begin
  // TODO: Set maps up correctly
  AEmpty := TSortedBidiMap<NativeInt,NativeInt>.Create;
  AOne := TSortedBidiMap<NativeInt,NativeInt>.Create;
  AFull := TSortedBidiMap<NativeInt,NativeInt>.Create;
  SetLength(APairs, 0);
  AKeyOrdering := oAscending;
end;

{ TConformance_TDoubleSortedBidiMap }

procedure TConformance_TDoubleSortedBidiMap.SetUp_IBidiMap(out AEmpty, AOne,
  AFull: IBidiMap<NativeInt, NativeInt>; out APairs: TPairs;
  out AKeyOrdering: TOrdering);
begin
  // TODO: Set maps up correctly
  AEmpty := TDoubleSortedBidiMap<NativeInt,NativeInt>.Create;
  AOne := TDoubleSortedBidiMap<NativeInt,NativeInt>.Create;
  AFull := TDoubleSortedBidiMap<NativeInt,NativeInt>.Create;
  SetLength(APairs, 0);
  AKeyOrdering := oAscending;
end;

{ TConformance_TBidiMap_Keys }

procedure TConformance_TBidiMap_Keys.SetUp_ISequence(out AEmpty, AOne,
  AFull: ISequence<NativeInt>; out AElements: TElements;
  out AOrdering: TOrdering);
var
  LMap: IBidiMap<NativeInt,NativeInt>;
begin
  // TODO: Set maps up correctly
  LMap := TBidiMap<NativeInt,NativeInt>.Create;
  AEmpty := LMap.Keys;
  AOne := LMap.Keys;
  AFull := LMap.Keys;
  SetLength(AElements, 0);
  AOrdering := oNone;
end;

{ TConformance_TBidiMap_Values }

procedure TConformance_TBidiMap_Values.SetUp_ISequence(out AEmpty, AOne,
  AFull: ISequence<NativeInt>; out AElements: TElements;
  out AOrdering: TOrdering);
var
  LMap: IBidiMap<NativeInt,NativeInt>;
begin
  // TODO: Set maps up correctly
  LMap := TBidiMap<NativeInt,NativeInt>.Create;
  AEmpty := LMap.Values;
  AOne := LMap.Values;
  AFull := LMap.Values;
  SetLength(AElements, 0);
  AOrdering := oNone;
end;

{ TConformance_TSortedBidiMap_Keys }

procedure TConformance_TSortedBidiMap_Keys.SetUp_ISequence(out AEmpty, AOne,
  AFull: ISequence<NativeInt>; out AElements: TElements;
  out AOrdering: TOrdering);
var
  LMap: IBidiMap<NativeInt,NativeInt>;
begin
  // TODO: Set maps up correctly
  LMap := TSortedBidiMap<NativeInt,NativeInt>.Create;
  AEmpty := LMap.Keys;
  AOne := LMap.Keys;
  AFull := LMap.Keys;
  SetLength(AElements, 0);
  AOrdering := oAscending;
end;

{ TConformance_TSortedBidiMap_Values }

procedure TConformance_TSortedBidiMap_Values.SetUp_ISequence(out AEmpty, AOne,
  AFull: ISequence<NativeInt>; out AElements: TElements;
  out AOrdering: TOrdering);
var
  LMap: IBidiMap<NativeInt,NativeInt>;
begin
  // TODO: Set maps up correctly
  LMap := TSortedBidiMap<NativeInt,NativeInt>.Create;
  AEmpty := LMap.Values;
  AOne := LMap.Values;
  AFull := LMap.Values;
  SetLength(AElements, 0);
  AOrdering := oAscending;
end;

{ TConformance_TDoubleSortedBidiMap_Keys }

procedure TConformance_TDoubleSortedBidiMap_Keys.SetUp_ISequence(out AEmpty,
  AOne, AFull: ISequence<NativeInt>; out AElements: TElements;
  out AOrdering: TOrdering);
var
  LMap: IBidiMap<NativeInt,NativeInt>;
begin
  // TODO: Set maps up correctly
  LMap := TDoubleSortedBidiMap<NativeInt,NativeInt>.Create;
  AEmpty := LMap.Keys;
  AOne := LMap.Keys;
  AFull := LMap.Keys;
  SetLength(AElements, 0);
  AOrdering := oAscending;
end;

{ TConformance_TDoubleSortedBidiMap_Values }

procedure TConformance_TDoubleSortedBidiMap_Values.SetUp_ISequence(out AEmpty,
  AOne, AFull: ISequence<NativeInt>; out AElements: TElements;
  out AOrdering: TOrdering);
var
  LMap: IBidiMap<NativeInt,NativeInt>;
begin
  // TODO: Set maps up correctly
  LMap := TDoubleSortedBidiMap<NativeInt,NativeInt>.Create;
  AEmpty := LMap.Values;
  AOne := LMap.Values;
  AFull := LMap.Values;
  SetLength(AElements, 0);
  AOrdering := oAscending;
end;

initialization
  RegisterTests('Conformance.Associative.BidiMaps', [
    TConformance_TBidiMap.Suite,
    TConformance_TSortedBidiMap.Suite,
    TConformance_TDoubleSortedBidiMap.Suite
  ]);

  RegisterTests('Conformance.Simple.Selectors', [
    TConformance_TBidiMap_Keys.Suite,
    TConformance_TBidiMap_Values.Suite,
    TConformance_TSortedBidiMap_Keys.Suite,
    TConformance_TSortedBidiMap_Values.Suite,
    TConformance_TDoubleSortedBidiMap_Keys.Suite,
    TConformance_TDoubleSortedBidiMap_Values.Suite
  ]);

end.

