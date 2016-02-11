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

{
  This file has been modified from the original by Peter Johnson 
  (@delphidabbler). For full details of modifications see the commit history of
  the delphidabbler/delphi-coll fork on GitHub
}


unit Tests.Conformance.BidiDictionaries;
interface
uses SysUtils,
     Tests.Conformance.Base,
     TestFramework,
     Generics.Collections,
     Collections.Base,
     Collections.BidiDictionaries;

type
  // TODO: Implement this test class
  TConformance_TBidiDictionary = class(TConformance_IBidiDictionary)
  protected
    procedure SetUp_IBidiDictionary(out AEmpty, AOne, AFull: IBidiDictionary<NativeInt, NativeInt>; out APairs: TPairs; out AKeyOrdering: TOrdering); override;
  published
  end;

  // TODO: Implement this test class
  TConformance_TSortedBidiDictionary = class(TConformance_IBidiDictionary)
  protected
    procedure SetUp_IBidiDictionary(out AEmpty, AOne, AFull: IBidiDictionary<NativeInt, NativeInt>; out APairs: TPairs; out AKeyOrdering: TOrdering); override;
  published
  end;

  // TODO: Implement this test class
  TConformance_TDoubleSortedBidiDictionary = class(TConformance_IBidiDictionary)
  protected
    procedure SetUp_IBidiDictionary(out AEmpty, AOne, AFull: IBidiDictionary<NativeInt, NativeInt>; out APairs: TPairs; out AKeyOrdering: TOrdering); override;
  published
  end;

type
  // TODO: Implement this test class
  TConformance_TBidiDictionary_Keys = class(TConformance_ISequence)
  protected
    procedure SetUp_ISequence(out AEmpty, AOne, AFull: ISequence<NativeInt>; out AElements: TElements; out AOrdering: TOrdering); override;
  published
  end;

  // TODO: Implement this test class
  TConformance_TBidiDictionary_Values = class(TConformance_ISequence)
  protected
    procedure SetUp_ISequence(out AEmpty, AOne, AFull: ISequence<NativeInt>; out AElements: TElements; out AOrdering: TOrdering); override;
  published
  end;

  // TODO: Implement this test class
  TConformance_TSortedBidiDictionary_Keys = class(TConformance_ISequence)
  protected
    procedure SetUp_ISequence(out AEmpty, AOne, AFull: ISequence<NativeInt>; out AElements: TElements; out AOrdering: TOrdering); override;
  published
  end;

  // TODO: Implement this test class
  TConformance_TSortedBidiDictionary_Values = class(TConformance_ISequence)
  protected
    procedure SetUp_ISequence(out AEmpty, AOne, AFull: ISequence<NativeInt>; out AElements: TElements; out AOrdering: TOrdering); override;
  published
  end;

  // TODO: Implement this test class
  TConformance_TDoubleSortedBidiDictionary_Keys = class(TConformance_ISequence)
  protected
    procedure SetUp_ISequence(out AEmpty, AOne, AFull: ISequence<NativeInt>; out AElements: TElements; out AOrdering: TOrdering); override;
  published
  end;

  // TODO: Implement this test class
  TConformance_TDoubleSortedBidiDictionary_Values = class(TConformance_ISequence)
  protected
    procedure SetUp_ISequence(out AEmpty, AOne, AFull: ISequence<NativeInt>; out AElements: TElements; out AOrdering: TOrdering); override;
  published
  end;

implementation

{ TConformance_TBidiDictionary }

procedure TConformance_TBidiDictionary.SetUp_IBidiDictionary(out AEmpty, AOne,
  AFull: IBidiDictionary<NativeInt, NativeInt>; out APairs: TPairs;
  out AKeyOrdering: TOrdering);
begin
  // TODO: Set dictionaries up correctly
  AEmpty := TBidiDictionary<NativeInt,NativeInt>.Create;
  AOne := TBiDiDictionary<NativeInt,NativeInt>.Create;
  AFull := TBiDiDictionary<NativeInt,NativeInt>.Create;
  SetLength(APairs, 0);
  AKeyOrdering := oNone;
end;

{ TConformance_TSortedBidiDictionary }

procedure TConformance_TSortedBidiDictionary.SetUp_IBidiDictionary(out AEmpty,
  AOne, AFull: IBidiDictionary<NativeInt, NativeInt>; out APairs: TPairs;
  out AKeyOrdering: TOrdering);
begin
  // TODO: Set dictionaries up correctly
  AEmpty := TSortedBidiDictionary<NativeInt,NativeInt>.Create;
  AOne := TSortedBiDiDictionary<NativeInt,NativeInt>.Create;
  AFull := TSortedBiDiDictionary<NativeInt,NativeInt>.Create;
  SetLength(APairs, 0);
  AKeyOrdering := oAscending;
end;

{ TConformance_TDoubleSortedBidiDictionary }

procedure TConformance_TDoubleSortedBidiDictionary.SetUp_IBidiDictionary(
  out AEmpty, AOne, AFull: IBidiDictionary<NativeInt, NativeInt>;
  out APairs: TPairs; out AKeyOrdering: TOrdering);
begin
  // TODO: Set dictionaries up correctly
  AEmpty := TDoubleSortedBidiDictionary<NativeInt,NativeInt>.Create;
  AOne := TDoubleSortedBidiDictionary<NativeInt,NativeInt>.Create;
  AFull := TDoubleSortedBidiDictionary<NativeInt,NativeInt>.Create;
  SetLength(APairs, 0);
  AKeyOrdering := oAscending;
end;

{ TConformance_TBidiDictionary_Keys }

procedure TConformance_TBidiDictionary_Keys.SetUp_ISequence(out AEmpty, AOne,
  AFull: ISequence<NativeInt>; out AElements: TElements;
  out AOrdering: TOrdering);
var
  LDict: IBidiDictionary<NativeInt,NativeInt>;
begin
  // TODO: Set dictionaries up correctly
  LDict := TBidiDictionary<NativeInt,NativeInt>.Create;
  AEmpty := LDict.Keys;
  AOne := LDict.Keys;
  AFull := LDict.Keys;
  SetLength(AElements, 0);
  AOrdering := oNone;
end;

{ TConformance_TBidiDictionary_Values }

procedure TConformance_TBidiDictionary_Values.SetUp_ISequence(out AEmpty, AOne,
  AFull: ISequence<NativeInt>; out AElements: TElements;
  out AOrdering: TOrdering);
var
  LDict: IBidiDictionary<NativeInt,NativeInt>;
begin
  // TODO: Set dictionaries up correctly
  LDict := TBidiDictionary<NativeInt,NativeInt>.Create;
  AEmpty := LDict.Values;
  AOne := LDict.Values;
  AFull := LDict.Values;
  SetLength(AElements, 0);
  AOrdering := oNone;
end;

{ TConformance_TSortedBidiDictionary_Keys }

procedure TConformance_TSortedBidiDictionary_Keys.SetUp_ISequence(out AEmpty,
  AOne, AFull: ISequence<NativeInt>; out AElements: TElements;
  out AOrdering: TOrdering);
var
  LDict: IBidiDictionary<NativeInt,NativeInt>;
begin
  // TODO: Set dictionaries up correctly
  LDict := TSortedBidiDictionary<NativeInt,NativeInt>.Create;
  AEmpty := LDict.Keys;
  AOne := LDict.Keys;
  AFull := LDict.Keys;
  SetLength(AElements, 0);
  AOrdering := oAscending;
end;

{ TConformance_TSortedBidiDictionary_Values }

procedure TConformance_TSortedBidiDictionary_Values.SetUp_ISequence(out AEmpty,
  AOne, AFull: ISequence<NativeInt>; out AElements: TElements;
  out AOrdering: TOrdering);
var
  LDict: IBidiDictionary<NativeInt,NativeInt>;
begin
  // TODO: Set dictionaries up correctly
  LDict := TSortedBidiDictionary<NativeInt,NativeInt>.Create;
  AEmpty := LDict.Values;
  AOne := LDict.Values;
  AFull := LDict.Values;
  SetLength(AElements, 0);
  AOrdering := oAscending;
end;

{ TConformance_TDoubleSortedBidiDictionary_Keys }

procedure TConformance_TDoubleSortedBidiDictionary_Keys.SetUp_ISequence(
  out AEmpty, AOne, AFull: ISequence<NativeInt>; out AElements: TElements;
  out AOrdering: TOrdering);
var
  LDict: IBidiDictionary<NativeInt,NativeInt>;
begin
  // TODO: Set dictionaries up correctly
  LDict := TDoubleSortedBidiDictionary<NativeInt,NativeInt>.Create;
  AEmpty := LDict.Keys;
  AOne := LDict.Keys;
  AFull := LDict.Keys;
  SetLength(AElements, 0);
  AOrdering := oAscending;
end;

{ TConformance_TDoubleSortedBidiDictionary_Values }

procedure TConformance_TDoubleSortedBidiDictionary_Values.SetUp_ISequence(
  out AEmpty, AOne, AFull: ISequence<NativeInt>; out AElements: TElements;
  out AOrdering: TOrdering);
var
  LDict: IBidiDictionary<NativeInt,NativeInt>;
begin
  // TODO: Set dictionaries up correctly
  LDict := TDoubleSortedBidiDictionary<NativeInt,NativeInt>.Create;
  AEmpty := LDict.Values;
  AOne := LDict.Values;
  AFull := LDict.Values;
  SetLength(AElements, 0);
  AOrdering := oAscending;
end;

initialization
  RegisterTests('Conformance.Associative.BidiDictionaries', [
    TConformance_TBidiDictionary.Suite,
    TConformance_TSortedBidiDictionary.Suite,
    TConformance_TDoubleSortedBidiDictionary.Suite
  ]);

  RegisterTests('Conformance.Simple.Selectors', [
    TConformance_TBidiDictionary_Keys.Suite,
    TConformance_TBidiDictionary_Values.Suite,
    TConformance_TSortedBidiDictionary_Keys.Suite,
    TConformance_TSortedBidiDictionary_Values.Suite,
    TConformance_TDoubleSortedBidiDictionary_Keys.Suite,
    TConformance_TDoubleSortedBidiDictionary_Values.Suite
  ]);

end.

