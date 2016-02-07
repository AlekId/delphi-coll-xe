# Enex Operations

> This document is a Markdown conversion of a page from the original *delphi-coll* project's *GoogleCode* wiki. The original was recovered from a [Wayback machine snapshot](http://web.archive.org/web/20131027155106/http://code.google.com/p/delphi-coll/wiki/EnexOperations) of 27 October 2013 and was last updated on 01 February 2011 by *denisa.i...@gmail.com*.

## Introduction

This page details the supported Enex (Enumerable Extensions) operations.

## Basic Operations

All collections in the `Collections `package support the following operations:

* `GetEnumerator()` -- retrieves an enumerator object used to traverse the collection. Each collection defines its own method of traversal. The common thing between all collections is the fact that at the time this method is called, the "version" of the collection is obtained. If the collection changes while enumerating, an exception is raised.

* `GetCount()`, `Count` -- specifies the number of elements currently stored in the collection. In case of associative collections (such as `TDictionary<TKey, TValue>`), this number specifies the count of key-value pairs. *Note: as a general recommendation, always use the `Count` property. For most collection classes, the property directly maps onto a field rather than a function call.*

* `Empty()` -- specifies whether the collection contains any elements or is empty. *Note that `Empty()` is more efficient than `GetCount()` if you only need to check if the collection is empty.*

* `Single()` -- returns the first and single element in the collection. This function is equivalent to `First()` but acts more like a contract: if the collection has more than one elements, an exception occurs. This method is useful in the cases when you are sure that a single element should be present but need to enforce a check (which is done for you).

* `SingleOrDefault()` -- this operation is functionally identical to `Single()` with the added bonus of returning a given default value if the collection has more than one elements. Use this operation to ensure your code will function even if the requested collection did not return the expected one element.

* `CopyTo()` -- copies all elements in the collection to a specified array. The array needs to have enough length for the elements. If the combination of parameters would lead to overflow, an exception is raise.

* `ToArray()` -- this is a simplified version of `CopyTo()`. Basically, the operation will allocate a new array with a proper length and then use `CopyTo()` to copy all elements. *Note: this method calls `GetCount()`, which, in collections with indeterminate length, may lead to big slowdowns.*

## Simple Collection Operations

The following list details the operations supported only by simple collections (such as `TList<T>`).

* `EqualsTo()` -- checks two collections for equality (element by element). A collection is "equal" to another if each element is equal to the other collection's element and their sizes are equal.

* `ToList()` -- creates a new list that holds the elements of this collection. This operation will create a new list and copy the elements of the calling collection. The return value is the new list. This operation is useful when working on enumerables that are not backed by a real collection.

* `ToSet()` -- creates a new set that holds the elements of this collection. This operation will create a new set and copy the elements of the calling collection. This operation will only include duplicate elements once. This is useful in circumstances when "clearing" a collection of duplicates is needed.

* `Max()` -- returns the element in the collection that is considered to have the biggest value. The collection's comparer is used to perform the checks. *Note: most sorted collections provide optimized versions of this method (since the smallest and the biggest values are known).*

* `Min()` -- returns the element in the collection that is considered to have the smallest value. The collection's comparer is used to perform the checks. *Note: most sorted collections provide optimized versions of this method (since the smallest and the biggest values are known).*

* `First()` -- returns the first element in the collection. Which is the "first" element remains at the discretion of the collection. If the collection is empty, an exception is raised. *Note: in sorted collections, this value is equal either to `Max()` or `Min()`, depending on the sort direction.*

* `FirstOrDefault()` -- this operation is functionally identical to `First()`. The only difference is that if the collection is empty, a provided default value is returned.

* `Last()` -- returns the last element in the collection. Which is the "last" element remains at the discretion of the collection. If the collection is empty, an exception is raised. *Note: in sorted collections, this value is equal either to `Max()` or `Min()`, depending on the sort direction.*

* `LastOrDefault()` -- this operation is functionally identical to `Last()`. The only difference is that if the collection is empty, a provided default value is returned.

* `FirstWhere()` -- returns the first element in the collection that satisfies a given logical predicate. The returned element depends on the collection's elements order. If the collection is empty or no elements satisfy the condition, an exception is raised.

* `FirstWhereOrDefault()` -- this operation is functionally identical to `FirstWhere()`. The only difference is that if the collection is empty or no elements satisfy the condition, a provided default value is returned.

* `FirstWhereNot()` -- returns the first element in the collection that doesn't satisfy a given logical predicate. The returned element depends on the collection's elements order. If the collection is empty or no elements satisfy the condition, an exception is raised.

* `FirstWhereNotOrDefault()` -- this operation is functionally identical to `FirstWhereNot()`. The only difference is that if the collection is empty or no elements satisfy the condition, a provided default value is returned.

* `FirstWhereLower()` -- returns the first element in the collection that is lower than a given value. The returned element depends on the collection's elements order. The collection's comparer is used to perform the checks. If the collection is empty or no elements satisfy the condition, an exception is raised.

* `FirstWhereLowerOrDefault()` -- this operation is functionally identical to `FirstWhereLower()`. The only difference is that if the collection is empty or no elements satisfy the condition, a provided default value is returned.

* `FirstWhereLowerOrEqual()` -- returns the first element in the collection that is lower than or equal to a given value. The returned element depends on the collection's elements order. The collection's comparer is used to perform the checks. If the collection is empty or no elements satisfy the condition, an exception is raised.

* `FirstWhereLowerOrEqualOrDefault()` -- this operation is functionally identical to `FirstWhereLowerOrEqual()`. The only difference is that if the collection is empty or no elements satisfy the condition, a provided default value is returned.

* `FirstWhereGreater()` -- returns the first element in the collection that is greater than a given value. The returned element depends on the collection's elements order. The collection's comparer is used to perform the checks. If the collection is empty or no elements satisfy the condition, an exception is raised.

* `FirstWhereGreaterOrDefault()` -- this operation is functionally identical to `FirstWhereGreater()`. The only difference is that if the collection is empty or no elements satisfy the condition, a provided default value is returned.

* `FirstWhereGreaterOrEqual()` -- returns the first element in the collection that is greater than or equal to a given value. The returned element depends on the collection's elements order. The collection's comparer is used to perform the checks. If the collection is empty or no elements satisfy the condition, an exception is raised.

* `FirstWhereGreaterOrEqualOrDefault()` -- this operation is functionally identical to `FirstWhereGreaterOrEqual()`. The only difference is that if the collection is empty or no elements satisfy the condition, a provided default value is returned.

* `FirstWhereBetween()` -- returns the first element in the collection that is between two given values. The returned element depends on the collection's elements order. The collection's comparer is used to perform the checks. If the collection is empty or no elements satisfy the condition, an exception is raised.

* `FirstWhereBetweenOrDefault()` -- this operation is functionally identical to `FirstWhereBetween()`. The only difference is that if the collection is empty or no elements satisfy the condition, a provided default value is returned.

* `Aggregate()` -- generates an aggregate value from all the elements in the collection. An aggregation function must be supplied. If the collection is empty, an exception is raised.

* `AggregateOrDefault()` -- this operation is functionally identical to `Aggregate()`. The only difference is that if the collection is empty, a provided default value is returned.

* `ElementAt()` -- Returns the element at a given index. Each collection defines its own indexing scheme. *Note: some, such as `TSet<T>`, do not even provide an indexing scheme. For these collections, the operation is still supported but is very slow (an enumeration of all elements is performed).*

* `ElementAtOrDefault()` -- this operation is functionally identical to `ElementAt()`. The only difference is that if the collection is empty, a provided default value is returned.

* `Any()` -- checks whether any of the collection's elements satisfies the given logical predicate. This operation traverses the whole collection and applies the given predicate to each element until at least one is found to satisfy it.

* `All()` -- checks whether all of the collection's elements satisfy the given logical predicate. This operation traverses the whole collection and applies the given predicate to each element until at least one is found not to satisfy it.

* `Where()` -- generates a new collection that only contains the elements that satisfy a logical predicate. The original collection's elements order is preserved.

* `WhereNot()` -- generates a new collection that only contains the elements that do not satisfy a logical predicate. The original collection's elements order is preserved.

* `WhereLower()` -- generates a new collection that only contains the elements that are lower than a given value. The collection's comparer is used to perform the checks. The original collection's elements order is preserved.

* `WhereLowerOrEqual()` -- generates a new collection that only contains the elements that are lower than or equal to a given value. The collection's comparer is used to perform the checks. The original collection's elements order is preserved.

* `WhereGreater()` -- generates a new collection that only contains the elements that are greater than a given value. The collection's comparer is used to perform the checks. The original collection's elements order is preserved.

* `WhereGreaterOrEqual()` -- generates a new collection that only contains the elements that are greater than or equal to a given value. The collection's comparer is used to perform the checks. The original collection's elements order is preserved.

* `WhereBetween()` -- generates a new collection that only contains the elements that are between two given values. The collection's comparer is used to perform the checks. The original collection's elements order is preserved.

* `Distinct()` -- generates a new collection that contains the elements from the original collection, taken once. Use this operation to remove duplicates from your input. The original collection's elements order is preserved. *Note: this operation will use an internal set to check whether the elements are unique. For very large input collections, this operation might be undesirable.*

* `Ordered()` -- generates a new collection that contains the elements from the original collection and sorted by given criteria. There are three variants of this operation, each accepting different parameters. The order is obviously different. *Note: internally, an array-based list is created and used to sort the elements. For very large input collections, this operation might be undesirable.*

* `Reversed()` -- generates a new collection that contains the elements from the original collection in the reverse order. The order is obviously different. *Note: internally, an array-based list is created and used to reverse the elements. For very large input collections, this operation might be undesirable.*

* `Concat()` -- generates a new collection that represents the concatenation of the original collection with another collection. The order of elements from both collections is preserved.

* `Union()` -- generates a new collection that represents the union of the original collection with another collection. The order of elements from both collections is preserved. *Note: this operation will use an internal set to check whether the elements are taken only once. For very large input collections, this operation might be undesirable.*

* `Exclude()` -- generates a new collection that represents the exclusion of a given collection from the original collection. The order of elements from both collections is preserved. *Note: this operation will use an internal set to check for excluded elements. For very large input collections, this operation might be undesirable.*

* `Intersect()` -- generates a new collection that represents the intersection of the original collection with another collection. The order of elements from the original collection is preserved. *Note: this operation will use an internal set to check which of the elements are taken. For very large input collections, this operation might be undesirable.*

* `Range()` -- generates a new collection that is the result of selecting a range of elements from the original collection. The range is given by a start and end index parameters. The order of elements from the original collection is preserved.

* `Take()` -- this operation is a particular form of `Range()`. Instead of specifying a start and end indexes, you specify a count; the start index is assumed to be zero. The order of elements from the original collection is preserved.

* `TakeWhile()` -- generates a new collection whose elements are taken from the original collection while each taken element satisfies a logical predicate. The first element that does not satisfy the condition marks the end of the operation. The order of elements from the original collection is preserved.

* `TakeWhileLower()` -- generates a new collection whose elements are taken from the original collection while each taken element is lower than a given value. The first element that does not satisfy the condition marks the end of the operation. The order of elements from the original collection is preserved.

* `TakeWhileLowerOrEqual()` -- generates a new collection whose elements are taken from the original collection while each taken element is lower than or equal to a given value. The first element that does not satisfy the condition marks the end of the operation. The order of elements from the original collection is preserved.

* `TakeWhileGreater()` -- generates a new collection whose elements are taken from the original collection while each taken element is lower than a given value. The first element that does not satisfy the condition marks the end of the operation. The order of elements from the original collection is preserved.

* `TakeWhileGreaterOrEqual()` -- generates a new collection whose elements are taken from the original collection while each taken element is greater than or equal to a given value. The first element that does not satisfy the condition marks the end of the operation. The order of elements from the original collection is preserved.

* `TakeWhileBetween()` -- generates a new collection whose elements are taken from the original collection while each taken element is between a given range. The first element that does not satisfy the condition marks the end of the operation. The order of elements from the original collection is preserved.

* `Skip()` -- generates a new collection whose elements are taken from the original collection. The operation will skip a specified number of elements and will return the rest (if available). The order of elements from the original collection is preserved.

* `SkipWhile()` -- generates a new collection whose elements are taken from the original collection. The operation will skip all elements while they satisfy a given logical predicate. The first element that does not satisfy the condition marks the start of the generated collection. The order of elements from the original collection is preserved.

* `SkipWhileLower()` -- generates a new collection whose elements are taken from the original collection. The operation will skip all elements while they are lower than a given value. The first element that does not satisfy the condition marks the start of the generated collection. The order of elements from the original collection is preserved.

* `SkipWhileLowerOrEqual()` -- generates a new collection whose elements are taken from the original collection. The operation will skip all elements while they are lower than or equal to a given value. The first element that does not satisfy the condition marks the start of the generated collection. The order of elements from the original collection is preserved.

* `SkipWhileGreater()` -- generates a new collection whose elements are taken from the original collection. The operation will skip all elements while they are greater than a given value. The first element that does not satisfy the condition marks the start of the generated collection. The order of elements from the original collection is preserved.

* `SkipWhileGreaterOrEqual()` -- generates a new collection whose elements are taken from the original collection. The operation will skip all elements while they are greater than or equal to a given value. The first element that does not satisfy the condition marks the start of the generated collection. The order of elements from the original collection is preserved.

* `SkipWhileBetween()` -- generates a new collection whose elements are taken from the original collection. The operation will skip all elements while they are in a given range. The first element that does not satisfy the condition marks the start of the generated collection. The order of elements from the original collection is preserved.

## Associative Collection Operations

The following list details the operations supported only by associative collections (such as `TMultiMap<TKey, TValue>`).

* `Includes()` -- checks whether the original collection includes another given collection (element by element). Because associative collections do not usually specify a stable element order, an equality operation would be useless. A collection includes another if all elements in the given collection can be found in the original collection (not vice-versa).

* `ToDictionary()` -- creates a new dictionary that holds the key-value pairs of this collection. This operation will create a new  dictionary and copy the elements of the calling collection. *Note: this operation will raise an exception if the original collection contains duplicate keys. For example, calling this method on a multi-map will result in an error if at least one key has more than one value attached.*

* `MaxKey()` -- returns the key in the collection that is considered to have the biggest value. The collection's key comparer is used to perform the checks. *Note: in some associative collections, this operation can be very fast (sorted dictionary, for example), while in others it can be very inefficient (normal dictionary).*

* `MinKey()` -- returns the key in the collection that is considered to have the smallest value. The collection's key comparer is used to perform the checks. *Note: in some associative collections, this operation can be very fast (sorted dictionary, for example), while in others it can be very inefficient (normal dictionary).*

* `MaxValue()` -- returns the value in the collection that is considered to be the biggest value. The collection's value comparer is used to perform the checks. *Note: in some associative collections, this operation can be very fast (double sorted bidi-map, for example), while in others it can be very inefficient (almost everything else).*

* `MinValue()` -- returns the value in the collection that is considered to be the smallest value. The collection's value comparer is used to perform the checks. *Note: in some associative collections, this operation can be very fast (double sorted bidi-map, for example), while in others it can be very inefficient (almost everything else).*

* `SelectKeys()`, `Keys` -- returns a collection comprised only of the keys of the original associative collection. *Note: as a general rule, use only the `Keys` property, because in classes it maps directly to the fields, while in the interface it calls into `SelectKeys()` anyway.*

* `SelectValues()`, `Values` -- returns a collection comprised only of the values of the original associative collection. *Note: as a general rule, use only the `Values` property, because in classes it maps directly to the fields, while in the interface it calls into `SelectValues()` anyway.*

* `DistinctByKeys()` -- generates a new collection that contains the key-value pairs from the original collection taken once for each distinct key. Use this operation to remove duplicate pairs (with the same key) from your input. *Note: this operation will use an internal set to check whether the elements are unique. For very large input collections, this operation might be undesirable.*

* `DistinctByValues()` -- generates a new collection that contains the key-value pairs from the original collection taken once for each distinct value. Use this operation to remove duplicate pairs (with the same value) from your input. *Note: this operation will use an internal set to check whether the elements are unique. For very large input collections, this operation might be undesirable.*

* `Where()` -- generates a new collection that only contains the key-value pairs that satisfy a logical predicate.

* `WhereNot()` -- generates a new collection that only contains the key-value pairs that do not satisfy a logical predicate.

* `WhereKeyLower()` -- generates a new collection that only contains the key-value pairs that have a key lower than a given value. The collection's comparer is used to perform the checks.

* `WhereKeyLowerOrEqual()` -- generates a new collection that only contains the key-value pairs that have a key lower than or equal to a given value. The collection's comparer is used to perform the checks.

* `WhereKeyGreater()` -- generates a new collection that only contains the key-value pairs that have a key greater than a given value. The collection's comparer is used to perform the checks.

* `WhereKeyGreaterOrEqual()` -- generates a new collection that only contains the key-value pairs that have a key greater than or equal to a given value. The collection's comparer is used to perform the checks.

* `WhereKeyBetween()` -- generates a new collection that only contains the key-value pairs that have a key between two given values. The collection's comparer is used to perform the checks.

* `WhereValueLower()` -- generates a new collection that only contains the key-value pairs that have a value lower than a given value. The collection's comparer is used to perform the checks.

* `WhereValueLowerOrEqual()` -- generates a new collection that only contains the key-value pairs that have a value lower than or equal to a given value. The collection's comparer is used to perform the checks.

* `WhereValueGreater()` -- generates a new collection that only contains the key-value pairs that have a value greater than a given value. The collection's comparer is used to perform the checks.

* `WhereValueGreaterOrEqual()` -- generates a new collection that only contains the key-value pairs that have a value greater than or equal to a given value. The collection's comparer is used to perform the checks.

* `WhereValueBetween()` -- generates a new collection that only contains the key-value pairs that have a value between two given values. The collection's comparer is used to perform the checks.

## Extended Operations

The following list details the extended set of operations. It is currently available only for simple collections. These operations can be accessed through the `Op` property of any simple collection.

* `Select()` -- generates a new collection that contains the values generated by a selector function applied for each element in the original collection. Basically, this operation allows you to "transform" a given input collection to another output collection.

* `Select<class>()` -- an operation that can only be used on collections that operate on elements of type object. This select operation traverses the original collection and casts all classes in it to another class. All elements that cannot be cast to the given class type are not included in the output collection.

* `GroupBy()` -- generates a collection of collections made from the initial input. Given a selector function, `GroupBy()` can group all input elements by the result of the selector function. The resulting collection stores a special collection (name a grouping) that contains all the elements from the original collection that are in the same group.
