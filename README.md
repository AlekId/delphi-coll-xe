# delphi-coll

Generic collections for Delphi 2010 and later.

> This is a fork that attempts to keep alive the  **discontinued** *Delphi Collections Library* by Ciobanu Alexandru. See below for further information about the fork.

## Overview of the library

### Description

The *Delphi Collections Library* is a package consisting of basic and advanced generic collections for Delphi. This package uses Delphi's standard `Generics.Defaults` and `Generics.Collections` units to access the comparer and equality comparer functionality. The library classes **do not** inherit from the base classes in `Generics.Collections`.

The library is fully documented using XMLDoc in the source code. You can use Help Insight to view function, type and class descriptions directly from the IDE. The library is fully tested using DUnit test cases.

### Requirements

At least Delphi 2010 is required to for the library to function. Delphi 2009 could in principle work, but the great amount of compiler bugs make it hard to use.

### Diagrams

![Simple collections diagram](media/SimpleCollectionsDiagram.png)

![Associative collections diagram](media/AssocCollectionsDiagram.png)

### More info

* [FAQ](doc/FAQ.md)
* [Implementation details](doc/CollectionDetails.md)
* [Enex operations](doc/EnexOperations.md)
* [Difference from standard collections](doc/DifferencesFromGenericsCollections.md)
* [Change log](CHANGELOG.md)

## Information about this fork

This is a fork of the **discontinued** [*Delphi Collections Library*](https://github.com/pavkam/delphi-coll) by [Ciobanu Alexandru](https://github.com/pavkam). It is believed that the library was itself derived from the equally defunct *DeHL* library by the same author.

The project was discontinued on 09 January 2012.

The code from which this fork is derived is based on the *Delphi Collections Library* v1.2 release, but with some later changes.

## License

Licensed under the BSD License -- see [LICENSE](LICENSE). The original library is copyright (c) 2008-2012, Ciobanu Alexandru. Any later new files are copyright (c) 2016, Peter Johnson (@delphidabbler).

## Bugs

Please notify any bugs using the Issue Tracker.

**Note:** This is not a top priority project for me, so I may not fix all bugs. So, if you can, fix the bug yourself and submit your changes. Pull requests are the way to go!

> Using the Wayback Machine a list of [outstanding issues](http://web.archive.org/web/20140312003357/http://code.google.com/p/delphi-coll/issues/list) from the original project has been found, but unfortunately the issue detail pages are not archived, so there's not much to go on.
