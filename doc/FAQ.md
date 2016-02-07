# FAQs

> This document is a Markdown conversion of a page from the original *delphi-coll* project's *GoogleCode* wiki. The original was recovered from a [Wayback machine snapshot](http://web.archive.org/web/20140313054413/http://code.google.com/p/delphi-coll/wiki/FAQ) of 13 March 2013 and was last updated on 03 February 2011 by *denisa.i...@gmail.com*.

## Introduction

A list of frequently asked questions about the *delphi-coll* project.

## The Questions

### Why *Collections* and not stock collections?

This is the wrong question to be asking yourself. The correct question would be "Am I satisfied with stock Delphi collections?". If your answer is no, then you have come to the right place. Check out the source code or browse around this portal a bit to find out what this project offers you. If you think you found valuable code that will make your life easier -- then use it, otherwise move on.

### I don't trust open source projects. Why should I use this one?

If you don't trust open source then don't. But bear in mind that this project has more than two years in progress (initially part of the *DeHL* project). All functionality has associated extensive unit tests. And every API has inline XMLDoc available explaining the purpose, use case and event possible exceptions that can be generated.

### What is the performance gain over stock collections?

None. The main focus of this project is to bring quality, simplicity, and most of all consistency on the table. Stock Delphi collections are designed to give you speed and simplicity while ignoring consistency.

### I care about speed. Why don't you care about that?

Sure I care. You can see it in a lot of places in my code. But I do not want to sacrifice consistency and design for a few gained cycles. If your project requires 100% performance then hand writing by case collections is your best bet anyway.

### Who needs so many collection types anyway?

Everybody and nobody at the same time. This project provides the basic set of collections everybody loves (for example, `TList<T>`, `TStack<T>`, `TDictionary<TKey, TValue>`, `THashSet<T>`). But there are numerous cases when specific variations or combination of these are required. I am pretty sure most of us needed a multi-map at some point or another and we always chose to write it by combining a dictionary with a number of lists. The point I am making is that there are many types of needs out there, and this project tries to provide them all as best as possible.

### Can I port my project to *Collections* from the stock collections?

First check if your project really needs the functionality provided by this project. Is porting over to *Collections* going to save you a large number of lines of code? Are you going to remove a lot of old legacy cruft? Then yes, you can move over to *Collections*. In all other cases I do not recommend it.

### What is this `TRules<T>` I see?

All classes in *Collections* require a comparer and some require an equality comparer. When and how is a little tricky to find, so there is a special type called `TRules<T>` that encapsulates a comparer and an equality comparer. Look at `TRules<T>` simply as a combination of those two.

### What the heck is that ENEX thingy?

Enex stands short for Enumerable Extensions. This is a set of operations that can be applied to all collections provided by this project. This is one of the main attractions of this project, as it allows the programmer worry about the program and not some menial collection-related task. See the samples included in the source code to get a better idea.

### Why so many interfaces? I don't like using them in my code.

Interfaces are required for Enex functionality. Enex relies on chaining collections and pseudo-collections. There are also a large number of implementations for the same collection type (for example, `TDictionary<TKey, TValue>`, `TLinkedDictionary<TKey, TValue>`, or `TSortedDictionary<TKey, TValue>`, which all implement `IDictionary<TKey, TValue>`). In order to make "runtime" selection of implementations easier, interfaces are a great help.

### Do I have to use interfaces then?

No. You can use just classes. *Collections* will not impose any particular style on you.

### Why do I get an Internal Compiler Error when I try X?

I am truly sorry. I have a really big "unorthodox" test case set that I always try to run to ensure that both the code is correct and that the project properly compiles. While I try to avoid ICEs (internal compiler errors) they still squeeze through in circumstances that I cannot predict. If you find such a case, create a small test case and add an issue. I will do my best to fix the problem either by offering advice on how to avoid the ICE or by changing something in the code.



