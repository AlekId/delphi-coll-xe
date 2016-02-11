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


unit Tests.Conformance.Dictionaries;
interface
uses SysUtils,
     Tests.Conformance.Base,
     TestFramework,
     Generics.Collections,
     Collections.Base,
     Collections.Dictionaries;

type
  // TODO: Implement this test class
  TConformance_TDictionary = class(TConformance_IDictionary)
  protected
    procedure SetUp_IDictionary(out AEmpty, AOne, AFull: IDictionary<NativeInt, NativeInt>; out APairs: TPairs; out AKeyOrdering: TOrdering); override;
  published
  end;

  // TODO: Implement this test class
  TConformance_TLinkedDictionary = class(TConformance_IDictionary)
  protected
    procedure SetUp_IDictionary(out AEmpty, AOne, AFull: IDictionary<NativeInt, NativeInt>; out APairs: TPairs; out AKeyOrdering: TOrdering); override;
  published
  end;

  // TODO: Implement this test class
  TConformance_TSortedDictionary = class(TConformance_IDictionary)
  protected
    procedure SetUp_IDictionary(out AEmpty, AOne, AFull: IDictionary<NativeInt, NativeInt>; out APairs: TPairs; out AKeyOrdering: TOrdering); override;
  published
  end;

type
  // TODO: Implement this test class
  TConformance_TDictionary_Keys = class(TConformance_ISequence)
  protected
    procedure SetUp_ISequence(out AEmpty, AOne, AFull: ISequence<NativeInt>; out AElements: TElements; out AOrdering: TOrdering); override;
  published
  end;

  // TODO: Implement this test class
  TConformance_TDictionary_Values = class(TConformance_ISequence)
  protected
    procedure SetUp_ISequence(out AEmpty, AOne, AFull: ISequence<NativeInt>; out AElements: TElements; out AOrdering: TOrdering); override;
  published
  end;

  // TODO: Implement this test class
  TConformance_TLinkedDictionary_Keys = class(TConformance_ISequence)
  protected
    procedure SetUp_ISequence(out AEmpty, AOne, AFull: ISequence<NativeInt>; out AElements: TElements; out AOrdering: TOrdering); override;
  published
  end;

  // TODO: Implement this test class
  TConformance_TLinkedDictionary_Values = class(TConformance_ISequence)
  protected
    procedure SetUp_ISequence(out AEmpty, AOne, AFull: ISequence<NativeInt>; out AElements: TElements; out AOrdering: TOrdering); override;
  published
  end;

  // TODO: Implement this test class
  TConformance_TSortedDictionary_Keys = class(TConformance_ISequence)
  protected
    procedure SetUp_ISequence(out AEmpty, AOne, AFull: ISequence<NativeInt>; out AElements: TElements; out AOrdering: TOrdering); override;
  published
  end;

  // TODO: Implement this test class
  TConformance_TSortedDictionary_Values = class(TConformance_ISequence)
  protected
    procedure SetUp_ISequence(out AEmpty, AOne, AFull: ISequence<NativeInt>; out AElements: TElements; out AOrdering: TOrdering); override;
  published
  end;

implementation

{ TConformance_TDictionary }

procedure TConformance_TDictionary.SetUp_IDictionary(out AEmpty, AOne,
  AFull: IDictionary<NativeInt, NativeInt>; out APairs: TPairs;
  out AKeyOrdering: TOrdering);
begin
  // TODO: Set dictionaries up correctly
  AEmpty := TDictionary<NativeInt,NativeInt>.Create;
  AOne := TDictionary<NativeInt,NativeInt>.Create;
  AFull := TDictionary<NativeInt,NativeInt>.Create;
  SetLength(APairs, 0);
  AKeyOrdering := oNone;
end;

{ TConformance_TLinkedDictionary }

procedure TConformance_TLinkedDictionary.SetUp_IDictionary(out AEmpty, AOne,
  AFull: IDictionary<NativeInt, NativeInt>; out APairs: TPairs;
  out AKeyOrdering: TOrdering);
begin
  // TODO: Set dictionaries up correctly
  AEmpty := TLinkedDictionary<NativeInt,NativeInt>.Create;
  AOne := TLinkedDictionary<NativeInt,NativeInt>.Create;
  AFull := TLinkedDictionary<NativeInt,NativeInt>.Create;
  SetLength(APairs, 0);
  AKeyOrdering := oNone;
end;

{ TConformance_TSortedDictionary }

procedure TConformance_TSortedDictionary.SetUp_IDictionary(out AEmpty, AOne,
  AFull: IDictionary<NativeInt, NativeInt>; out APairs: TPairs;
  out AKeyOrdering: TOrdering);
begin
  // TODO: Set dictionaries up correctly
  AEmpty := TSortedDictionary<NativeInt,NativeInt>.Create;
  AOne := TSortedDictionary<NativeInt,NativeInt>.Create;
  AFull := TSortedDictionary<NativeInt,NativeInt>.Create;
  SetLength(APairs, 0);
  AKeyOrdering := oAscending;
end;

{ TConformance_TDictionary_Keys }

procedure TConformance_TDictionary_Keys.SetUp_ISequence(out AEmpty, AOne,
  AFull: ISequence<NativeInt>; out AElements: TElements;
  out AOrdering: TOrdering);
var
  LDict: IDictionary<NativeInt,NativeInt>;
begin
  // TODO: Set dictionaries up correctly
  LDict := TDictionary<NativeInt,NativeInt>.Create;
  AEmpty := LDict.Keys;
  AOne := LDict.Keys;
  AFull := LDict.Keys;
  SetLength(AElements, 0);
end;

{ TConformance_TDictionary_Values }

procedure TConformance_TDictionary_Values.SetUp_ISequence(out AEmpty, AOne,
  AFull: ISequence<NativeInt>; out AElements: TElements;
  out AOrdering: TOrdering);
var
  LDict: IDictionary<NativeInt,NativeInt>;
begin
  // TODO: Set dictionaries up correctly
  LDict := TDictionary<NativeInt,NativeInt>.Create;
  AEmpty := LDict.Values;
  AOne := LDict.Values;
  AFull := LDict.Values;
  SetLength(AElements, 0);
end;

{ TConformance_TLinkedDictionary_Keys }

procedure TConformance_TLinkedDictionary_Keys.SetUp_ISequence(out AEmpty, AOne,
  AFull: ISequence<NativeInt>; out AElements: TElements;
  out AOrdering: TOrdering);
var
  LDict: IDictionary<NativeInt,NativeInt>;
begin
  // TODO: Set dictionaries up correctly
  LDict := TLinkedDictionary<NativeInt,NativeInt>.Create;
  AEmpty := LDict.Keys;
  AOne := LDict.Keys;
  AFull := LDict.Keys;
  SetLength(AElements, 0);
end;

{ TConformance_TLinkedDictionary_Values }

procedure TConformance_TLinkedDictionary_Values.SetUp_ISequence(out AEmpty,
  AOne, AFull: ISequence<NativeInt>; out AElements: TElements;
  out AOrdering: TOrdering);
var
  LDict: IDictionary<NativeInt,NativeInt>;
begin
  // TODO: Set dictionaries up correctly
  LDict := TLinkedDictionary<NativeInt,NativeInt>.Create;
  AEmpty := LDict.Values;
  AOne := LDict.Values;
  AFull := LDict.Values;
  SetLength(AElements, 0);
end;

{ TConformance_TSortedDictionary_Keys }

procedure TConformance_TSortedDictionary_Keys.SetUp_ISequence(out AEmpty, AOne,
  AFull: ISequence<NativeInt>; out AElements: TElements;
  out AOrdering: TOrdering);
var
  LDict: IDictionary<NativeInt,NativeInt>;
begin
  // TODO: Set dictionaries up correctly
  LDict := TSortedDictionary<NativeInt,NativeInt>.Create;
  AEmpty := LDict.Keys;
  AOne := LDict.Keys;
  AFull := LDict.Keys;
  SetLength(AElements, 0);
end;

{ TConformance_TSortedDictionary_Values }

procedure TConformance_TSortedDictionary_Values.SetUp_ISequence(out AEmpty,
  AOne, AFull: ISequence<NativeInt>; out AElements: TElements;
  out AOrdering: TOrdering);
var
  LDict: IDictionary<NativeInt,NativeInt>;
begin
  // TODO: Set dictionaries up correctly
  LDict := TSortedDictionary<NativeInt,NativeInt>.Create;
  AEmpty := LDict.Values;
  AOne := LDict.Values;
  AFull := LDict.Values;
  SetLength(AElements, 0);
end;

initialization
  RegisterTests('Conformance.Associative.Dictionaries', [
    TConformance_TDictionary.Suite,
    TConformance_TLinkedDictionary.Suite,
    TConformance_TSortedDictionary.Suite
  ]);

  RegisterTests('Conformance.Simple.Selectors', [
    TConformance_TDictionary_Keys.Suite,
    TConformance_TDictionary_Values.Suite,
    TConformance_TLinkedDictionary_Keys.Suite,
    TConformance_TLinkedDictionary_Values.Suite,
    TConformance_TSortedDictionary_Keys.Suite,
    TConformance_TSortedDictionary_Values.Suite
  ]);

end.

