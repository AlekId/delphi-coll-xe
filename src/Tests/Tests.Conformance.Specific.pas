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


unit Tests.Conformance.Specific;
interface
uses SysUtils,
     Tests.Internal.Basics,
     Tests.Conformance.Base,
     TestFramework,
     Generics.Collections,
     Collections.Base,
     Collections.Sets;

type
  // NOTE: Temporary class that all un-implemented classes descend from: used simply to get a fail test
  //       When a test is implemented change its parent class back to the commented out version and
  //       provide concrete implementations of inherited abstract methods.
  TSpecificTempTest = class(TTestCaseEx)
  published
    procedure Test_STUB;
  end;

// TODO: restore following parent class when implementing test(s)
//  TConformance_TCollection = class(TConformance_ICollection)
  TConformance_TCollection = class(TSpecificTempTest)
  published
    // TODO: Implement tests
  end;

// TODO: restore following parent class when implementing test(s)
//  TConformance_TAbstractMap = class(TConformance_IMap)
  TConformance_TAbstractMap = class(TSpecificTempTest)
  published
    // TODO: Implement tests
  end;

// TODO: restore following parent class when implementing test(s)
//  TConformance_ISequence_Op_GroupBy = class(TConformance_IGrouping)
  TConformance_ISequence_Op_GroupBy = class(TSpecificTempTest)
  published
    // TODO: Implement tests
  end;

// TODO: restore following parent class when implementing test(s)
//  TConformance_ISequence_ToList = class(TConformance_IList)
  TConformance_ISequence_ToList = class(TSpecificTempTest)
  published
    // TODO: Implement tests
  end;

// TODO: restore following parent class when implementing test(s)
//  TConformance_ISequence_ToSet = class(TConformance_ISet)
  TConformance_ISequence_ToSet = class(TSpecificTempTest)
  published
    // TODO: Implement tests
  end;

// TODO: restore following parent class when implementing test(s)
//  TConformance_ISequence_Where = class(TConformance_ISequence)
  TConformance_ISequence_Where = class(TSpecificTempTest)
  published
    // TODO: Implement tests
  end;

// TODO: restore following parent class when implementing test(s)
//  TConformance_ISequence_Distinct = class(TConformance_ISequence)
  TConformance_ISequence_Distinct = class(TSpecificTempTest)
  published
    // TODO: Implement tests
  end;

// TODO: restore following parent class when implementing test(s)
//  TConformance_ISequence_Ordered_1 = class(TConformance_ISequence)
  TConformance_ISequence_Ordered_1 = class(TSpecificTempTest)
  published
    // TODO: Implement tests
  end;

// TODO: restore following parent class when implementing test(s)
//  TConformance_ISequence_Ordered_2 = class(TConformance_ISequence)
  TConformance_ISequence_Ordered_2 = class(TSpecificTempTest)
  published
    // TODO: Implement tests
  end;

// TODO: restore following parent class when implementing test(s)
//  TConformance_ISequence_Reversed = class(TConformance_ISequence)
  TConformance_ISequence_Reversed = class(TSpecificTempTest)
  published
    // TODO: Implement tests
  end;

// TODO: restore following parent class when implementing test(s)
//  TConformance_ISequence_Concat = class(TConformance_ISequence)
  TConformance_ISequence_Concat = class(TSpecificTempTest)
  published
    // TODO: Implement tests
  end;

// TODO: restore following parent class when implementing test(s)
//  TConformance_ISequence_Union = class(TConformance_ISequence)
  TConformance_ISequence_Union = class(TSpecificTempTest)
  published
    // TODO: Implement tests
  end;

// TODO: restore following parent class when implementing test(s)
//  TConformance_ISequence_Exclude = class(TConformance_ISequence)
  TConformance_ISequence_Exclude = class(TSpecificTempTest)
  published
    // TODO: Implement tests
  end;

// TODO: restore following parent class when implementing test(s)
//  TConformance_ISequence_Intersect = class(TConformance_ISequence)
  TConformance_ISequence_Intersect = class(TSpecificTempTest)
  published
    // TODO: Implement tests
  end;

// TODO: restore following parent class when implementing test(s)
//  TConformance_ISequence_Range = class(TConformance_ISequence)
  TConformance_ISequence_Range = class(TSpecificTempTest)
  published
    // TODO: Implement tests
  end;

// TODO: restore following parent class when implementing test(s)
//  TConformance_ISequence_Take = class(TConformance_ISequence)
  TConformance_ISequence_Take = class(TSpecificTempTest)
  published
    // TODO: Implement tests
  end;

// TODO: restore following parent class when implementing test(s)
//  TConformance_ISequence_TakeWhile = class(TConformance_ISequence)
  TConformance_ISequence_TakeWhile = class(TSpecificTempTest)
  published
    // TODO: Implement tests
  end;

// TODO: restore following parent class when implementing test(s)
//  TConformance_ISequence_Skip = class(TConformance_ISequence)
  TConformance_ISequence_Skip = class(TSpecificTempTest)
  published
    // TODO: Implement tests
  end;

// TODO: restore following parent class when implementing test(s)
//  TConformance_ISequence_SkipWhile = class(TConformance_ISequence)
  TConformance_ISequence_SkipWhile = class(TSpecificTempTest)
  published
    // TODO: Implement tests
  end;

// TODO: restore following parent class when implementing test(s)
//  TConformance_ISequence_Op_Select_1 = class(TConformance_ISequence)
  TConformance_ISequence_Op_Select_1 = class(TSpecificTempTest)
  published
    // TODO: Implement tests
  end;

// TODO: restore following parent class when implementing test(s)
//  TConformance_ISequence_Op_Select_2 = class(TConformance_ISequence)
  TConformance_ISequence_Op_Select_2 = class(TSpecificTempTest)
  published
    // TODO: Implement tests
  end;

// TODO: restore following parent class when implementing test(s)
//  TConformance_ISequence_Op_Select_3 = class(TConformance_ISequence)
  TConformance_ISequence_Op_Select_3 = class(TSpecificTempTest)
  published
    // TODO: Implement tests
  end;

// TODO: restore following parent class when implementing test(s)
//  TConformance_ISequence_Op_Select_4 = class(TConformance_ISequence)
  TConformance_ISequence_Op_Select_4 = class(TSpecificTempTest)
  published
    // TODO: Implement tests
  end;

// TODO: restore following parent class when implementing test(s)
//  TConformance_ISequence_Op_Select_5 = class(TConformance_ISequence)
  TConformance_ISequence_Op_Select_5 = class(TSpecificTempTest)
  published
    // TODO: Implement tests
  end;

// TODO: restore following parent class when implementing test(s)
//  TConformance_IAssociation_ToDictionary = class(TConformance_IDictionary)
  TConformance_IAssociation_ToDictionary = class(TSpecificTempTest)
  published
    // TODO: Implement tests
  end;

// TODO: restore following parent class when implementing test(s)
//  TConformance_IAssociation_SelectKeys = class(TConformance_ISequence)
  TConformance_IAssociation_SelectKeys = class(TSpecificTempTest)
  published
    // TODO: Implement tests
  end;

// TODO: restore following parent class when implementing test(s)
//  TConformance_IAssociation_SelectValues = class(TConformance_ISequence)
  TConformance_IAssociation_SelectValues = class(TSpecificTempTest)
  published
    // TODO: Implement tests
  end;

// TODO: restore following parent class when implementing test(s)
//  TConformance_IAssociation_DistinctByKeys = class(TConformance_IAssociation)
  TConformance_IAssociation_DistinctByKeys = class(TSpecificTempTest)
  published
    // TODO: Implement tests
  end;

// TODO: restore following parent class when implementing test(s)
//  TConformance_IAssociation_DistinctByValues = class(TConformance_IAssociation)
  TConformance_IAssociation_DistinctByValues = class(TSpecificTempTest)
  published
    // TODO: Implement tests
  end;

// TODO: restore following parent class when implementing test(s)
//  TConformance_IAssociation_Where = class(TConformance_IAssociation)
  TConformance_IAssociation_Where = class(TSpecificTempTest)
  published
    // TODO: Implement tests
  end;

implementation

{ TSpecificTempTest }

procedure TSpecificTempTest.Test_STUB;
begin
  Fail('No tests implemented for ' + ClassName + '!');
end;

initialization
  RegisterTests('Conformance.Simple.Specific', [
    TConformance_ISequence_ToList.Suite,
    TConformance_ISequence_ToSet.Suite,
    TConformance_ISequence_Where.Suite,
    TConformance_ISequence_Distinct.Suite,
    TConformance_ISequence_Ordered_1.Suite,
    TConformance_ISequence_Ordered_2.Suite,
    TConformance_ISequence_Reversed.Suite,
    TConformance_ISequence_Concat.Suite,
    TConformance_ISequence_Union.Suite,
    TConformance_ISequence_Exclude.Suite,
    TConformance_ISequence_Intersect.Suite,
    TConformance_ISequence_Range.Suite,
    TConformance_ISequence_Take.Suite,
    TConformance_ISequence_TakeWhile.Suite,
    TConformance_ISequence_Skip.Suite,
    TConformance_ISequence_SkipWhile.Suite,
    TConformance_ISequence_Op_Select_1.Suite,
    TConformance_ISequence_Op_Select_2.Suite,
    TConformance_ISequence_Op_Select_3.Suite,
    TConformance_ISequence_Op_Select_4.Suite,
    TConformance_ISequence_Op_Select_5.Suite
  ]);

  RegisterTests('Conformance.Associative.Specific', [
    TConformance_IAssociation_ToDictionary.Suite,
    TConformance_IAssociation_SelectKeys.Suite,
    TConformance_IAssociation_SelectValues.Suite,
    TConformance_IAssociation_DistinctByKeys.Suite,
    TConformance_IAssociation_DistinctByValues.Suite,
    TConformance_IAssociation_Where.Suite
  ]);

end.

