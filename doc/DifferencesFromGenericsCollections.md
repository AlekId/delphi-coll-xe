# Differences From Generics Collections

> This document is a Markdown conversion of a page from the original *delphi-coll* project's *GoogleCode* wiki. The original was recovered from a [Wayback machine snapshot](http://web.archive.org/web/20130521194411/http://code.google.com/p/delphi-coll/wiki/DifferencesFromGenericsCollections) of 21 May 2013 and was last updated on 25 January 2011 by *denisa.i...@gmail.com*.

## Introduction

This page details the differences between the `Collections` package and the `Generics.Collections` standard unit.

## Rule sets

The `Generics.Defaults` unit defines two basic interfaces used to represent a type (compare and hash code). These are:

* `IComparer<T>`, which provides support for comparing two values of the same type.
* `IEqualityComparer<T>`, which provides support for comparing for equality and generating a hash code for a given value.

While the first type is used for collections that at some point need comparing their elements (with requiring a sort order), the second type is used mainly in hash-based collections such as `TDictionary<TKey, TValue>`.

All collections in the `Collections` package always require the possibility to compare two elements, so `IComparer<T>` is a must have type. Some collections such as `TDictionary<TKey, TValue>` and `THashSet<T>` also require an `IEqualityComparer<T>` type for its hashing functionality. This basically means that in most cases you will require to pass both types to a collection in order to make it fully functional.

To alleviate this need, the `Collections` package introduces `TRules<T>`, which is a simple record type that contains both a comparer and an equality comparer (on need basis). To obtain a set of rules, one must call the `TRules<T>.Default` method, which retrieves the default comparer and the equality comparer from the `Generics.Collections` system.

## Base classes

`Generics.Collections` classes are all derived from `TEnumerable<T>` or `TEnumerator<T>`. Most people will agree that this is not enough in many cases and that is why `Collections` introduces interfaces. All collections have a public interface (e.g. `IList<T>`, `IDictionary<TKey, TValue>`, and so on). Also, since there exists more than one implementation for the same collection idea, an interface is a must. For example, there is a hash-based `TDictionary<TKey, TValue>` type and an AVL tree based-one, `TSortedDictionary<TKey, TValue>`.

All collections in this package descend from `TCollection<T>` but there is no restriction that new collections must derive from it also. It is still recommended, because the base classes implement most extended enumerable operations out-of-the-box.

## Enumerable extensions (ENEX)

All collections in the proposed package support a set of extensions. Because Delphi does not support proper class helpers, it was necessary to provide interface-based extensions. In any case, there are a large number of helper functions each collection implements / re-implements or extends, giving the user total freedom and optimizing a lot of things that would take a lot of time otherwise. For example, to obtain a list of distinct elements in a list, one can simple call `LList.Distinct().ToList()`, which otherwise would have taken a bit of coding to write.

For more information regarding ENEX, see `IEnexCollection<T>` and `IEnexAssociativeCollection<TKey, TValue>` in the `Collections.Base` unit.

## Integer vs NativeInt

`Collections` relies on `NativeInt` extensively in the code. You won't find any references to `Integer`. This is a personal preference and is designed to more easily enable 64bit support when it's ready.
