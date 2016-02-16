# delphi-coll-xe

Generic collections for Delphi XE and later.

> This project is based on a fork of the **discontinued** *delphi-coll* project *(Delphi Collections Library)* by Ciobanu Alexandru. See below for further information.

## Overview of the library

### Description

The *Delphi Collections Library XE* is a package consisting of basic and advanced generic collections for Delphi. This package uses Delphi's standard `Generics.Defaults` and `Generics.Collections` units to access the comparer and equality comparer functionality. The library classes **do not** inherit from the base classes in `Generics.Collections`.

The library is fully documented using XMLDoc in the source code. You can use Help Insight from the Delphi IDE to view function, type and class descriptions directly from the IDE.

DUnit unit tests are available for some of the code.

### Requirements

At least Delphi XE is required for the library to function.

### Diagrams

![Simple collections diagram](media/SimpleCollectionsDiagram.png)

![Associative collections diagram](media/AssocCollectionsDiagram.png)

### More info

* [FAQ](doc/FAQ.md)
* [Implementation details](doc/CollectionDetails.md)
* [Enex operations](doc/EnexOperations.md)
* [Difference from standard collections](doc/DifferencesFromGenericsCollections.md)
* [Change log](CHANGELOG.md)

## Information about the original project

This project was forked from [*Delphi Collections Library*](https://github.com/pavkam/delphi-coll) by [Ciobanu Alexandru](https://github.com/pavkam). This project was discontinued on 09 January 2012.

The code from which this fork is derived is based on [commit 6f4c499](https://github.com/pavkam/delphi-coll/commit/6f4c499dafa1fdb59004cfbeafc34bd5d45bbfed) of the *Delphi Collections Library*. This commit represents a point in time following release v1.2 after some API breaking changes had been made.

## License

See [LICENSE.md](LICENSE.md) for full details.

## Contributing

Future development will be using the [Git Flow](http://nvie.com/posts/a-successful-git-branching-model/) branching model. So, to contribute please create a feature branch off the `develop` branch, make your changes, and then create a pull request for your changes.

## Bugs

Please notify any bugs using the [GitHub Issue Tracker](https://github.com/delphidabbler/delphi-coll-xe/issues).

**Note:** This is not a top priority project for me, so I may not fix all bugs. So, if you can, fix the bug yourself and submit your changes. Pull requests are the way to go -- see above.

> Using the *Wayback Machine*, a list of [outstanding issues](http://web.archive.org/web/20140312003357/http://code.google.com/p/delphi-coll/issues/list) from the original *Delphi Collections Library* project has been found. Unfortunately the issue detail pages are not archived, so all we have are brief descriptions of each issue, which means there's not much to go on.
