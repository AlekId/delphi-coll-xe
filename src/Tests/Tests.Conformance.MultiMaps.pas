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

unit Tests.Conformance.MultiMaps;
interface
uses SysUtils,
     Tests.Conformance.Base,
     TestFramework,
     Generics.Collections,
     Collections.Base,
     Collections.MultiMaps;

type
  // TODO: Implement this test class
  TConformance_TMultiMap = class(TConformance_IMultiMap)
  protected
    procedure SetUp_IMultiMap(out AEmpty, AOne, AFull: IMultiMap<NativeInt, NativeInt>; out APairs: TPairs; out AKeyOrdering: TOrdering); override;
  published
  end;

  // TODO: Implement this test class
  TConformance_TSortedMultiMap = class(TConformance_IMultiMap)
  protected
    procedure SetUp_IMultiMap(out AEmpty, AOne, AFull: IMultiMap<NativeInt, NativeInt>; out APairs: TPairs; out AKeyOrdering: TOrdering); override;
  published
  end;

  // TODO: Implement this test class
  TConformance_TDoubleSortedMultiMap = class(TConformance_IMultiMap)
  protected
    procedure SetUp_IMultiMap(out AEmpty, AOne, AFull: IMultiMap<NativeInt, NativeInt>; out APairs: TPairs; out AKeyOrdering: TOrdering); override;
  published
  end;

  // TODO: Implement this test class
  TConformance_TDistinctMultiMap = class(TConformance_IMultiMap)
  protected
    procedure SetUp_IMultiMap(out AEmpty, AOne, AFull: IMultiMap<NativeInt, NativeInt>; out APairs: TPairs; out AKeyOrdering: TOrdering); override;
  published
  end;

  // TODO: Implement this test class
  TConformance_TSortedDistinctMultiMap = class(TConformance_IMultiMap)
  protected
    procedure SetUp_IMultiMap(out AEmpty, AOne, AFull: IMultiMap<NativeInt, NativeInt>; out APairs: TPairs; out AKeyOrdering: TOrdering); override;
  published
  end;

  // TODO: Implement this test class
  TConformance_TDoubleSortedDistinctMultiMap = class(TConformance_IMultiMap)
  protected
    procedure SetUp_IMultiMap(out AEmpty, AOne, AFull: IMultiMap<NativeInt, NativeInt>; out APairs: TPairs; out AKeyOrdering: TOrdering); override;
  published
  end;

type
  // TODO: Implement this test class
  TConformance_TMultiMap_Keys = class(TConformance_ISequence)
  protected
    procedure SetUp_ISequence(out AEmpty, AOne, AFull: ISequence<NativeInt>; out AElements: TElements; out AOrdering: TOrdering); override;
  published
  end;

  // TODO: Implement this test class
  TConformance_TMultiMap_Values = class(TConformance_ISequence)
  protected
    procedure SetUp_ISequence(out AEmpty, AOne, AFull: ISequence<NativeInt>; out AElements: TElements; out AOrdering: TOrdering); override;
  published
  end;

  // TODO: Implement this test class
  TConformance_TSortedMultiMap_Keys = class(TConformance_ISequence)
  protected
    procedure SetUp_ISequence(out AEmpty, AOne, AFull: ISequence<NativeInt>; out AElements: TElements; out AOrdering: TOrdering); override;
  published
  end;

  // TODO: Implement this test class
  TConformance_TSortedMultiMap_Values = class(TConformance_ISequence)
  protected
    procedure SetUp_ISequence(out AEmpty, AOne, AFull: ISequence<NativeInt>; out AElements: TElements; out AOrdering: TOrdering); override;
  published
  end;

  // TODO: Implement this test class
  TConformance_TDoubleSortedMultiMap_Keys = class(TConformance_ISequence)
  protected
    procedure SetUp_ISequence(out AEmpty, AOne, AFull: ISequence<NativeInt>; out AElements: TElements; out AOrdering: TOrdering); override;
  published
  end;

  // TODO: Implement this test class
  TConformance_TDoubleSortedMultiMap_Values = class(TConformance_ISequence)
  protected
    procedure SetUp_ISequence(out AEmpty, AOne, AFull: ISequence<NativeInt>; out AElements: TElements; out AOrdering: TOrdering); override;
  published
  end;

  // TODO: Implement this test class
  TConformance_TDistinctMultiMap_Keys = class(TConformance_ISequence)
  protected
    procedure SetUp_ISequence(out AEmpty, AOne, AFull: ISequence<NativeInt>; out AElements: TElements; out AOrdering: TOrdering); override;
  published
  end;

  // TODO: Implement this test class
  TConformance_TDistinctMultiMap_Values = class(TConformance_ISequence)
  protected
    procedure SetUp_ISequence(out AEmpty, AOne, AFull: ISequence<NativeInt>; out AElements: TElements; out AOrdering: TOrdering); override;
  published
  end;

  // TODO: Implement this test class
  TConformance_TSortedDistinctMultiMap_Keys = class(TConformance_ISequence)
  protected
    procedure SetUp_ISequence(out AEmpty, AOne, AFull: ISequence<NativeInt>; out AElements: TElements; out AOrdering: TOrdering); override;
  published
  end;

  // TODO: Implement this test class
  TConformance_TSortedDistinctMultiMap_Values = class(TConformance_ISequence)
  protected
    procedure SetUp_ISequence(out AEmpty, AOne, AFull: ISequence<NativeInt>; out AElements: TElements; out AOrdering: TOrdering); override;
  published
  end;

  // TODO: Implement this test class
  TConformance_TDoubleSortedDistinctMultiMap_Keys = class(TConformance_ISequence)
  protected
    procedure SetUp_ISequence(out AEmpty, AOne, AFull: ISequence<NativeInt>; out AElements: TElements; out AOrdering: TOrdering); override;
  published
  end;

  // TODO: Implement this test class
  TConformance_TDoubleSortedDistinctMultiMap_Values = class(TConformance_ISequence)
  protected
    procedure SetUp_ISequence(out AEmpty, AOne, AFull: ISequence<NativeInt>; out AElements: TElements; out AOrdering: TOrdering); override;
  published
  end;

implementation

{ TConformance_TMultiMap }

procedure TConformance_TMultiMap.SetUp_IMultiMap(out AEmpty, AOne,
  AFull: IMultiMap<NativeInt, NativeInt>; out APairs: TPairs;
  out AKeyOrdering: TOrdering);
begin
  // TODO: Set maps up correctly
  AEmpty := TMultiMap<NativeInt,NativeInt>.Create;
  AOne := TMultiMap<NativeInt,NativeInt>.Create;
  AFull := TMultiMap<NativeInt,NativeInt>.Create;
  SetLength(APairs, 0);
  AKeyOrdering := oNone;
end;

{ TConformance_TSortedMultiMap }

procedure TConformance_TSortedMultiMap.SetUp_IMultiMap(out AEmpty, AOne,
  AFull: IMultiMap<NativeInt, NativeInt>; out APairs: TPairs;
  out AKeyOrdering: TOrdering);
begin
  // TODO: Set maps up correctly
  AEmpty := TSortedMultiMap<NativeInt,NativeInt>.Create;
  AOne := TSortedMultiMap<NativeInt,NativeInt>.Create;
  AFull := TSortedMultiMap<NativeInt,NativeInt>.Create;
  SetLength(APairs, 0);
  AKeyOrdering := oAscending;
end;

{ TConformance_TDoubleSortedMultiMap }

procedure TConformance_TDoubleSortedMultiMap.SetUp_IMultiMap(out AEmpty, AOne,
  AFull: IMultiMap<NativeInt, NativeInt>; out APairs: TPairs;
  out AKeyOrdering: TOrdering);
begin
  // TODO: Set maps up correctly
  AEmpty := TDoubleSortedMultiMap<NativeInt,NativeInt>.Create;
  AOne := TDoubleSortedMultiMap<NativeInt,NativeInt>.Create;
  AFull := TDoubleSortedMultiMap<NativeInt,NativeInt>.Create;
  SetLength(APairs, 0);
  AKeyOrdering := oDescending;
end;

{ TConformance_TDistinctMultiMap }

procedure TConformance_TDistinctMultiMap.SetUp_IMultiMap(out AEmpty, AOne,
  AFull: IMultiMap<NativeInt, NativeInt>; out APairs: TPairs;
  out AKeyOrdering: TOrdering);
begin
  // TODO: Set maps up correctly
  AEmpty := TDistinctMultiMap<NativeInt,NativeInt>.Create;
  AOne := TDistinctMultiMap<NativeInt,NativeInt>.Create;
  AFull := TDistinctMultiMap<NativeInt,NativeInt>.Create;
  SetLength(APairs, 0);
  AKeyOrdering := oNone;
end;

{ TConformance_TSortedDistinctMultiMap }

procedure TConformance_TSortedDistinctMultiMap.SetUp_IMultiMap(out AEmpty, AOne,
  AFull: IMultiMap<NativeInt, NativeInt>; out APairs: TPairs;
  out AKeyOrdering: TOrdering);
begin
  // TODO: Set maps up correctly
  AEmpty := TSortedDistinctMultiMap<NativeInt,NativeInt>.Create;
  AOne := TSortedDistinctMultiMap<NativeInt,NativeInt>.Create;
  AFull := TSortedDistinctMultiMap<NativeInt,NativeInt>.Create;
  SetLength(APairs, 0);
  AKeyOrdering := oAscending;
end;

{ TConformance_TDoubleSortedDistinctMultiMap }

procedure TConformance_TDoubleSortedDistinctMultiMap.SetUp_IMultiMap(out AEmpty,
  AOne, AFull: IMultiMap<NativeInt, NativeInt>; out APairs: TPairs;
  out AKeyOrdering: TOrdering);
begin
  // TODO: Set maps up correctly
  AEmpty := TDoubleSortedDistinctMultiMap<NativeInt,NativeInt>.Create;
  AOne := TDoubleSortedDistinctMultiMap<NativeInt,NativeInt>.Create;
  AFull := TDoubleSortedDistinctMultiMap<NativeInt,NativeInt>.Create;
  SetLength(APairs, 0);
  AKeyOrdering := oDescending;
end;

{ TConformance_TMultiMap_Keys }

procedure TConformance_TMultiMap_Keys.SetUp_ISequence(out AEmpty, AOne,
  AFull: ISequence<NativeInt>; out AElements: TElements;
  out AOrdering: TOrdering);
var
  LMap: IMultiMap<NativeInt,NativeInt>;
begin
  // TODO: Set maps up correctly
  LMap := TMultiMap<NativeInt,NativeInt>.Create;
  AEmpty := LMap.Keys;
  AOne := LMap.Keys;
  AFull := LMap.Keys;
  SetLength(AElements, 0);
  AOrdering := oNone;
end;

{ TConformance_TMultiMap_Values }

procedure TConformance_TMultiMap_Values.SetUp_ISequence(out AEmpty, AOne,
  AFull: ISequence<NativeInt>; out AElements: TElements;
  out AOrdering: TOrdering);
var
  LMap: IMultiMap<NativeInt,NativeInt>;
begin
  // TODO: Set maps up correctly
  LMap := TMultiMap<NativeInt,NativeInt>.Create;
  AEmpty := LMap.Values;
  AOne := LMap.Values;
  AFull := LMap.Values;
  SetLength(AElements, 0);
  AOrdering := oNone;
end;

{ TConformance_TSortedMultiMap_Keys }

procedure TConformance_TSortedMultiMap_Keys.SetUp_ISequence(out AEmpty, AOne,
  AFull: ISequence<NativeInt>; out AElements: TElements;
  out AOrdering: TOrdering);
var
  LMap: IMultiMap<NativeInt,NativeInt>;
begin
  // TODO: Set maps up correctly
  LMap := TSortedMultiMap<NativeInt,NativeInt>.Create;
  AEmpty := LMap.Keys;
  AOne := LMap.Keys;
  AFull := LMap.Keys;
  SetLength(AElements, 0);
  AOrdering := oDescending;
end;

{ TConformance_TSortedMultiMap_Values }

procedure TConformance_TSortedMultiMap_Values.SetUp_ISequence(out AEmpty, AOne,
  AFull: ISequence<NativeInt>; out AElements: TElements;
  out AOrdering: TOrdering);
var
  LMap: IMultiMap<NativeInt,NativeInt>;
begin
  // TODO: Set maps up correctly
  LMap := TSortedMultiMap<NativeInt,NativeInt>.Create;
  AEmpty := LMap.Values;
  AOne := LMap.Values;
  AFull := LMap.Values;
  SetLength(AElements, 0);
  AOrdering := oDescending;
end;

{ TConformance_TDoubleSortedMultiMap_Keys }

procedure TConformance_TDoubleSortedMultiMap_Keys.SetUp_ISequence(out AEmpty,
  AOne, AFull: ISequence<NativeInt>; out AElements: TElements;
  out AOrdering: TOrdering);
var
  LMap: IMultiMap<NativeInt,NativeInt>;
begin
  // TODO: Set maps up correctly
  LMap := TDoubleSortedMultiMap<NativeInt,NativeInt>.Create;
  AEmpty := LMap.Keys;
  AOne := LMap.Keys;
  AFull := LMap.Keys;
  SetLength(AElements, 0);
  AOrdering := oAscending;
end;

{ TConformance_TDoubleSortedMultiMap_Values }

procedure TConformance_TDoubleSortedMultiMap_Values.SetUp_ISequence(out AEmpty,
  AOne, AFull: ISequence<NativeInt>; out AElements: TElements;
  out AOrdering: TOrdering);
var
  LMap: IMultiMap<NativeInt,NativeInt>;
begin
  // TODO: Set maps up correctly
  LMap := TDoubleSortedMultiMap<NativeInt,NativeInt>.Create;
  AEmpty := LMap.Values;
  AOne := LMap.Values;
  AFull := LMap.Values;
  SetLength(AElements, 0);
  AOrdering := oAscending;
end;

{ TConformance_TDistinctMultiMap_Keys }

procedure TConformance_TDistinctMultiMap_Keys.SetUp_ISequence(out AEmpty, AOne,
  AFull: ISequence<NativeInt>; out AElements: TElements;
  out AOrdering: TOrdering);
var
  LMap: IMultiMap<NativeInt,NativeInt>;
begin
  // TODO: Set maps up correctly
  LMap := TDistinctMultiMap<NativeInt,NativeInt>.Create;
  AEmpty := LMap.Keys;
  AOne := LMap.Keys;
  AFull := LMap.Keys;
  SetLength(AElements, 0);
  AOrdering := oNone;
end;

{ TConformance_TDistinctMultiMap_Values }

procedure TConformance_TDistinctMultiMap_Values.SetUp_ISequence(out AEmpty,
  AOne, AFull: ISequence<NativeInt>; out AElements: TElements;
  out AOrdering: TOrdering);
var
  LMap: IMultiMap<NativeInt,NativeInt>;
begin
  // TODO: Set maps up correctly
  LMap := TDistinctMultiMap<NativeInt,NativeInt>.Create;
  AEmpty := LMap.Values;
  AOne := LMap.Values;
  AFull := LMap.Values;
  SetLength(AElements, 0);
  AOrdering := oNone;
end;

{ TConformance_TSortedDistinctMultiMap_Keys }

procedure TConformance_TSortedDistinctMultiMap_Keys.SetUp_ISequence(out AEmpty,
  AOne, AFull: ISequence<NativeInt>; out AElements: TElements;
  out AOrdering: TOrdering);
var
  LMap: IMultiMap<NativeInt,NativeInt>;
begin
  // TODO: Set maps up correctly
  LMap := TSortedDistinctMultiMap<NativeInt,NativeInt>.Create;
  AEmpty := LMap.Keys;
  AOne := LMap.Keys;
  AFull := LMap.Keys;
  SetLength(AElements, 0);
  AOrdering := oAscending;
end;

{ TConformance_TSortedDistinctMultiMap_Values }

procedure TConformance_TSortedDistinctMultiMap_Values.SetUp_ISequence(
  out AEmpty, AOne, AFull: ISequence<NativeInt>; out AElements: TElements;
  out AOrdering: TOrdering);
var
  LMap: IMultiMap<NativeInt,NativeInt>;
begin
  // TODO: Set maps up correctly
  LMap := TSortedDistinctMultiMap<NativeInt,NativeInt>.Create;
  AEmpty := LMap.Values;
  AOne := LMap.Values;
  AFull := LMap.Values;
  SetLength(AElements, 0);
  AOrdering := oAscending;
end;

{ TConformance_TDoubleSortedDistinctMultiMap_Keys }

procedure TConformance_TDoubleSortedDistinctMultiMap_Keys.SetUp_ISequence(
  out AEmpty, AOne, AFull: ISequence<NativeInt>; out AElements: TElements;
  out AOrdering: TOrdering);
var
  LMap: IMultiMap<NativeInt,NativeInt>;
begin
  // TODO: Set maps up correctly
  LMap := TDoubleSortedDistinctMultiMap<NativeInt,NativeInt>.Create;
  AEmpty := LMap.Keys;
  AOne := LMap.Keys;
  AFull := LMap.Keys;
  SetLength(AElements, 0);
  AOrdering := oDescending;
end;

{ TConformance_TDoubleSortedDistinctMultiMap_Values }

procedure TConformance_TDoubleSortedDistinctMultiMap_Values.SetUp_ISequence(
  out AEmpty, AOne, AFull: ISequence<NativeInt>; out AElements: TElements;
  out AOrdering: TOrdering);
var
  LMap: IMultiMap<NativeInt,NativeInt>;
begin
  // TODO: Set maps up correctly
  LMap := TDoubleSortedDistinctMultiMap<NativeInt,NativeInt>.Create;
  AEmpty := LMap.Values;
  AOne := LMap.Values;
  AFull := LMap.Values;
  SetLength(AElements, 0);
  AOrdering := oDescending;
end;

initialization
  RegisterTests('Conformance.Associative.MultiMaps', [
    TConformance_TMultiMap.Suite,
    TConformance_TSortedMultiMap.Suite,
    TConformance_TDoubleSortedMultiMap.Suite,
    TConformance_TDistinctMultiMap.Suite,
    TConformance_TSortedDistinctMultiMap.Suite,
    TConformance_TDoubleSortedDistinctMultiMap.Suite
  ]);

  RegisterTests('Conformance.Simple.Selectors', [
    TConformance_TMultiMap_Keys.Suite,
    TConformance_TMultiMap_Values.Suite,
    TConformance_TSortedMultiMap_Keys.Suite,
    TConformance_TSortedMultiMap_Values.Suite,
    TConformance_TDoubleSortedMultiMap_Keys.Suite,
    TConformance_TDoubleSortedMultiMap_Values.Suite,
    TConformance_TDistinctMultiMap_Keys.Suite,
    TConformance_TDistinctMultiMap_Values.Suite,
    TConformance_TSortedDistinctMultiMap_Keys.Suite,
    TConformance_TSortedDistinctMultiMap_Values.Suite,
    TConformance_TDoubleSortedDistinctMultiMap_Keys.Suite,
    TConformance_TDoubleSortedDistinctMultiMap_Values.Suite
  ]);

end.

