# Collection Details

> This document is a Markdown conversion of a page from the original *delphi-coll* project's *GoogleCode* wiki. The original was recovered from a [Wayback machine snapshot](http://web.archive.org/web/20130727043252/http://code.google.com/p/delphi-coll/wiki/CollectionDetails) of 27 July 2013 and was last updated on 01 February 2011 by *denisa.i...@gmail.com*.

## Introduction

This page details on the implementation of collections.

## Included Collections

The following units are provided in the `Collections` package:

### `Collections.Base`
  
* Defines all interfaces used in the package.
* Implements helper functionality to support enumerable extensions.
* Defines the exceptions and strings used in the whole package.
* Provides the base classes for the whole package.

### `Collections.Lists`

* `TList<T>` - the generic array-based list.
* `TObjectList<T>` - the generic-array based list designed to store objects.
* `TSortedList<T>` - the generic array-based list. Keeps elements sorted at all times.
* `TObjectSortedList<T>` - the generic array-based list designed to store objects. Keeps elements sorted at all times.
* `TLinkedList<T>` - the generic linked list.
* `TObjectLinkedList<T>` - the generic linked list designed to store objects.
* `TSortedLinkedList<T>` - the generic linked list. Keeps elements sorted at all times.
* `TObjectSortedLinkedList<T>` - the generic linked list designed to store objects. Keeps elements sorted at all times.

### `Collections.Queues`

* `TQueue<T>` - the generic array-based queue.
* `TObjectQueue<T>` - the generic array-based queue designed to store objects.
* `TLinkedQueue<T>` - the generic linked list-based queue.
* `TObjectLinkedQueue<T>` - the generic linked list-based queue designed to store objects.
* `TPriorityQueue<TPriority, TValue>` - the generic array-based priority queue.
* `TObjectPriorityQueue<TPriority, TValue>` - the generic array-based priority queue designed to store objects.
    
### `Collections.Stacks`

* `TStack<T>` - the generic array-based stack.
* `TObjectStack<T>` - the generic array-based stack designed to store objects.
* `TLinkedStack<T>` - the generic linked list-based stack.
* `TObjectLinkedStack<T>` - the generic linked list-based stack designed to store objects.
    
### `Collections.Sets`

* `THashSet<T>` - the generic hash-based set.
* `TObjectHashSet<T>` - the generic hash-based set designed to store objects.
* `TLinkedSet<T>` - the generic hash/doubly-linked list-based set.
* `TObjectLinkedSet<T>` - the generic hash/doubly-linked list-based set designed to store objects.
* `TSortedSet<T>` - the generic AVL tree-based set.
* `TObjectSortedSet<T>` - the generic AVL tree-based set designed to store objects.
* `TArraySet<T>` - the generic array-based set.
* `TObjectArraySet<T>` - the generic array-based set designed to store objects.
* `TBitSet` - A specialized set type for storing 16-bit numbers.
    
### `Collections.Dictionaries`

* `TDictionary<TKey, TValue>` - the generic hash-based dictionary.
* `TObjectDictionary<TKey, TValue>` - the generic hash-based dictionary designed to store objects.
* `TLinkedDictionary<TKey, TValue>` - the generic hash/doubly-linked list-based dictionary.
* `TObjectLinkedDictionary<TKey, TValue>` - the generic hash/doubly-linked list-based dictionary designed to store objects.
* `TSortedDictionary<TKey, TValue>` - the generic AVL tree-based dictionary.
* `TObjectSortedDictionary<TKey, TValue>` - the generic AVL tree-based dictionary designed to store objects.

### `Collections.Bags`

* `TBag<T>` - the generic hash-based bag.
* `TObjectBag<T>` - the generic hash-based bag designed to store objects.
* `TSortedBag<T>` - the generic AVL tree-based bag.
* `TObjectSortedBag<T>` - the generic AVL tree-based bag designed to store objects.

### `Collections.MultiMaps`

* `TMultiMap<TKey, TValue>` - the generic hash-based multi-map. Allows repeated values for the same key.
* `TObjectMultiMap<TKey, TValue>` - the generic hash-based multi-map designed to store objects. Allows repeated values for the same key.
* `TDistinctMultiMap<TKey, TValue>` - the generic hash-based multi-map. Does not allow repeated values for the same key.
* `TObjectDistinctMultiMap<TKey, TValue>` - the generic hash-based multi-map designed to store objects. Does not allow repeated values for the same key.
* `TSortedDistinctMultiMap<TKey, TValue>` - the generic AVL tree-based multi-map. Does not allow repeated values for the same key.
* `TObjectSortedDistinctMultiMap<TKey, TValue>` - the generic AVL trebased multi-map designed to store objects. Does not allow repeated values for the same key.
* `TDoubleSortedMultiMap<TKey, TValue>` - the generic AVL tree-based multi-map. Allows repeated values for the same key. Both keys and values are kept ordered.
* `TObjectDoubleSortedMultiMap<TKey, TValue>` - the generic AVL tree-based multi-map designed to store objects. Allows repeated values for the same key. Both keys and values are kept ordered.
* `TDoubleSortedDistinctMultiMap<TKey, TValue>` - the generic AVL tree-based multi-map. Does not allow repeated values for the same key. Both keys and values are kept ordered.
* `TObjectDoubleSortedDistinctMultiMap<TKey, TValue>` - the generic AVL tree-based multi-map designed to store objects. Does not allow repeated values for the same key. Both keys and values are kept ordered.

### `Collections.BidiDictionaries`

* `TBidiDictionary<TKey, TValue>` - the generic hash-based bidirectional dictionary.
* `TObjectBidiDictionary<TKey, TValue>` - the generic hash-based bidirectional dictionary designed to store objects.
* `TSortedBidiDictionary<TKey, TValue>` - the generic AVL tree-based bidirectional dictionary. Sorted on keys.
* `TObjectSortedBidiDictionary<TKey, TValue>` - the generic AVL tree-based bidirectional dictionary designed to store objects. Sorted on keys.
* `TDoubleSortedBidiDictionary<TKey, TValue>` - the generic AVL tree-based bidirectional dictionary. Sorted on both keys and values.
* `TObjectDoubleSortedBidiDictionary<TKey, TValue>` - the generic AVL tree-based bidirectional dictionary designed to store objects. Sorted on both keys and values.

### `Collections.BidiMaps`

* `TBidiMap<TKey, TValue>` - the generic hash-based bidirectional map.
* `TObjectBidiMap<TKey, TValue>` - the generic hash-based bidirectional map designed to store objects.
* `TSortedBidiMap<TKey, TValue>` - the generic AVL tree-based bidirectional map. Sorted on keys.
* `TObjectSortedBidiMap<TKey, TValue>` - the generic AVL tree-based bidirectional map designed to store objects. Sorted on keys.
* `TDoubleSortedBidiMap<TKey, TValue>` - the generic AVL tree-based bidirectional map. Sorted on both keys and values.
* `TObjectDoubleSortedBidiMap<TKey, TValue>` - the generic AVL tree-based bidirectional map designed to store objects. Sorted on both keys and values.

## Collection Details

This section describes each collection, its specifics and supported functionality.

### `TList<T>`

* **When to use:** Supports indexing, fast lookup and enumeration operations, sorting, and reversing. If capacity increase slowdowns are not a problem, this is the best choice in terms of lists.
* **Data structure:** array.
* **Capacity:** controllable.
* **Element order:** insertion.
* **Duplicate elements:** allowed.
* **Indexed access:** fast.
* **Insertion:** `Insert`, slow (elements need pushing forward).
* **Addition:** `Add`, slow (elements need pushing forward).
* **Removal:** `Remove`, `RemoveAt`, slow (elements need pushing backward).
* **Lookup:** `Contains`, `IndexOf`, `LastIndexOf`, slower for large number of elements.
* **Sorting:** `Sort`, quick sort algorithm.
* **Reversing:** `Reverse`, slower for large number of elements.
* **Enumeration:** fast.
* **Enex:** fast.

### `TSortedList<T>`

* **When to use:** Supports indexing, fast lookup and enumeration operations, doesn't support sorting or reversing. Slower insert times because of automated sorting. If you plan to use a list that is always sorted, and if you don't plan on inserting or removing a lot, then this is the best choice. If you need sorted elements but need to insert/add/remove a lot, use `TList<T>` and sort on demand.
* **Data structure:** array.
* **Capacity:** controllable.
* **Element order:** collection defined, ordered.
* **Duplicate elements:** allowed.
* **Indexed access:** fast.
* **Insertion:** not supported.
* **Addition:** `Add`, slow (elements need pushing forward, insert point is searched).
* **Removal:** `Remove`, slow (elements need pushing backward).
* **Lookup:** `Contains`, `IndexOf`, `LastIndexOf`, fast, binary search algorithm used.
* **Sorting:** not supported, collection is sorted by default.
* **Reversing:** not supported, collection maintains own ordering.
* **Enumeration:** fast.
* **Enex:** fast.

### `TSortedLinkedList<T>`

* **When to use:** Doesn't support indexing, sorting, or reversing. Adding and removing from the head and tail of the list is extremely fast. Lookup is slower than for `TSortedList<T>`. Insert times are a bit better than for `TSortedList<T>`, because no elements are moved and no capacity is used. If you don't need indexing and mostly add elements to the list, then this list is better than `TSortedList<T>`.
* **Data structure:** doubly-linked list.
* **Capacity:** not supported.
* **Element order:** collection defined, ordered.
* **Duplicate elements:** allowed.
* **Indexed access:** very slow, discouraged.
* **Insertion:** very slow, discouraged.
* **Addition:** `Add`, fast.
* **Removal:** `Remove`, slower for large number of elements.
* **Lookup:** `Contains`, `IndexOf`, `LastIndexOf`, slower for large number of elements.
* **Sorting:** not supported, collection is sorted by default.
* **Reversing:** not supported, collection maintains own ordering.
* **Enumeration:** fast.
* **Enex:** fast.

### `TLinkedList<T>`

* **When to use:** Adding and removing elements from the head and tail of the list is extremely fast. Enumeration is also fast. If you plan to only add a number of elements to the list and move on, then this is the choice. If you need sorting or reversing, then `TList<T>` is clearly superior.
* **Data structure:** doubly-linked list.
* **Capacity:** not supported.
* **Element order:** insertion.
* **Duplicate elements:** allowed.
* **Indexed access:** very slow, discouraged.
* **Insertion:** `Insert`, very slow, discouraged.
* **Addition:** `Add`, fast.
* **Removal:** `Remove`, `RemoveAt`, slower for large number of elements, very slow on index-based removal, discouraged.
* **Lookup:** `Contains`, `IndexOf`, `LastIndexOf`, slower for large number of elements.
* **Sorting**: `Sort`, temporary list used, slow, discouraged.
* **Reversing:** `Reverse`, temporary list used, slow, discouraged
* **Enumeration:** fast.
* **Enex:** fast.

### `TQueue<T>`

* **When to use:** Use this queue when memory constraints are important. This queue suffers from uneven enqueue times (capacity growing) and slower dequeue operations. If you need time-guaranteed operations (and memory is not a constraint), use `TLinkedQueue<T>`.
* **Data structure:** array.
* **Capacity:** controllable.
* **Element order:** insertion.
* **Duplicate elements:** allowed.
* **Indexed access:** not supported.
* **Insertion:** not supported.
* **Addition:** `Enqueue`, fast (may be slow on capacity increase).
* **Removal:** `Dequeue`, fast.
* **Lookup:** `Contains`, slower for large number of elements.
* **Sorting:** not supported.
* **Reversing:** not supported.
* **Enumeration:** fast.
* **Enex:** fast.

### `TLinkedQueue<T>`

* **When to use:** Use this queue implementation if memory constraints are not a problem. Otherwise use `TQueue<T>`.
* **Data structure:** doubly-linked list.
* **Capacity:** not supported.
* **Element order:** insertion.
* **Duplicate elements:** allowed.
* **Indexed access:** not supported.
* **Insertion:** not supported.
* **Addition:** `Enqueue`, fast.
* **Removal:** `Dequeue`, fast.
* **Lookup:** `Contains`, slower for large number of elements.
* **Sorting:** not supported.
* **Reversing:** not supported.
* **Enumeration:** fast.
* **Enex:** fast.

### `TPriorityQueue<TPriority,TValue>`

* **When to use:** If you need a data structure that performs priority-based FIFO functionality, then this is the correct structure. If priorities of all elements are the same, this queue acts exactly as a simple `TQueue<T>`, otherwise the priority controls which is the next dequeued element.
* **Data structure:** array.
* **Capacity:** controllable.
* **Key order:** unspecified.
* **Value order:** unspecified.
* **Duplicate keys:** allowed.
* **Duplicate values:** allowed.
* **Indexed access:** not supported.
* **Insertion:** not supported.
* **Addition:** `Enqueue`, slow (queue needs reorganizing).
* **Removal:** `Dequeue`, fast.
* **Lookup:** `Contains`, slower for large number of elements.
* **Sorting:** not supported.
* **Reversing:** not supported.
* **Enumeration:** fast.
* **Enex:** fast.

### `TStack<T>`

* **When to use:** Use this stack when memory constraints are important. This stack suffers from uneven push times (capacity growing) and slower pop operations. If you need time-guaranteed operations (and memory is not a constraint), use `TLinkedStack<T>`.
* **Data structure:** array.
* **Capacity:** controllable.
* **Element order:** insertion.
* **Duplicate elements:** allowed.
* **Indexed access:** not supported.
* **Insertion:** not supported.
* **Addition:** `Push`, fast (may be slow on capacity increase).
* **Removal:** `Pop`, fast.
* **Lookup:** `Contains`, slower for large number of elements.
* **Sorting:** not supported.
* **Reversing:** not supported.
* **Enumeration:** fast.
* **Enex:** fast.

### `TLinkedStack<T>`

* **When to use:** Use this stack implementation if memory constraints are not a problem. Otherwise use `TStack<T>`.
* **Data structure:** doubly-linked list.
* **Capacity:** not supported.
* **Element order:** insertion.
* **Duplicate elements:** allowed.
* **Indexed access:** not supported.
* **Insertion:** not supported.
* **Addition:** `Push`, fast.
* **Removal:** `Pop`, fast.
* **Lookup:** `Contains`, slower for large number of elements.
* **Sorting:** not supported.
* **Reversing:** not supported.
* **Enumeration:** fast.
* **Enex:** fast.

### `THashSet<T>`

* **When to use:** Use this collection if you need to store elements (with no allowed duplicates) and don't care about the ordering. The elements are randomly organized. If you need a set implementation with predictable ordering use either `TLinkedSet<T>` or `TSortedSet<T>`. All in all, this is the most used set implementation. Its performance is pretty good in all circumstances.
* **Data structure:** bucket array, entry array.
* **Capacity:** controllable.
* **Element order:** unspecified.
* **Duplicate elements:** not allowed, silent.
* **Indexed access:** not supported.
* **Insertion:** not supported.
* **Addition:** `Add`, fast, hashes used (slow when capacity grows).
* **Removal:** `Remove`, fast, hashes used.
* **Lookup:** `Contains`, fast, hashes used.
* **Sorting:** not supported.
* **Reversing:** not supported.
* **Enumeration:** slow, entry array needs traversal, many items are null.
* **Enex:** slow.

### `TLinkedSet<T>`

* **When to use:** This set implementation is essentially equivalent to `THashSet<T>`, with a small adjustment. Instead of an entry array, a linked list is used. This allows for a somewhat predictable ordering to be used and for fast enumeration.
* **Data structure:** bucket array, entry doubly-linked list.
* **Capacity:** controllable for bucket array.
* **Element order:** insertion order across similar hashes.
* **Duplicate elements:** not allowed, silent.
* **Indexed access:** not supported.
* **Insertion:** not supported.
* **Addition:** `Add`, fast, hashes used (slow when capacity grows).
* **Removal:** `Remove`, fast, hashes used.
* **Lookup:** `Contains`, fast, hashes used.
* **Sorting:** not supported.
* **Reversing:** not supported.
* **Enumeration:** fast, linked list is traversed.
* **Enex:** slow.

### `TSortedSet<T>`

* **When to use:** If you need a set in which elements are sorted, then this is the proper class. This implementation uses an AVL tree to store the values (not hashes). Insertion and removal are pretty costly, but lookup is fast. Use this collection if you need a set that performs well (and predictable) on lookup.
* **Data structure:** AVL tree.
* **Capacity:** not supported.
* **Element order:** collection defined, ordered.
* **Duplicate elements:** not allowed, silent.
* **Indexed access:** not supported.
* **Insertion:** not supported.
* **Addition:** `Add`, slow, searches for proper location, tree balancing.
* **Removal:** `Remove`, slow, tree balancing.
* **Lookup:** `Contains`, very fast, AVL tree lookup.
* **Sorting:** not supported, elements are ordered by default.
* **Reversing:** not supported.
* **Enumeration:** fast, tree is traversed left-to-right.
* **Enex:** fast.

### `TArraySet<T>`

* **When to use:** For a very small number of elements this is the best set implementation. Basically it uses an internal sorted array and does binary search lookups on each operation. For a small amount of elements it performs really well, while for a large number it's not worth it.
* **Data structure:** array.
* **Capacity:** controllable.
* **Element order:** collection defined, ordered.
* **Duplicate elements:** not allowed, silent.
* **Indexed access:** not supported.
* **Insertion:** not supported.
* **Addition:** `Add`, slow for large number of elements, binary search algorithm.
* **Removal:** `Remove`, slow for large number of elements, binary search algorithm.
* **Lookup:** `Contains`, fast, binary search algorithm.
* **Sorting:** not supported, elements are ordered by default.
* **Reversing:** not supported.
* **Enumeration:** fast, internal array is traversed.
* **Enex:** fast.

### `TBitSet`

* **When to use:** This set implementation is the best in terms of speed when it comes to storing small numbers. If you only need a set that can store 16-bit numbers, chose this implementation. It is a sorted set, optimized to give the fastest responses possible..
* **Data structure:** array.
* **Capacity:** not supported.
* **Element order:** collection defined, ordered.
* **Duplicate elements:** not allowed, silent.
* **Indexed access:** not supported.
* **Insertion:** not supported.
* **Addition:** `Add`, fast, bit set, potential array length change.
* **Removal:** `Remove`, very fast, bit clear.
* **Lookup:** `Contains`, very fast, bit test.
* **Sorting:** not supported, elements are ordered by default.
* **Reversing:** not supported.
* **Enumeration:** medium, each bit is enumerated.
* **Enex:** fast.

### `TBag<T>`

* **When to use:** A bag is a collection similar to a set. The only difference is that a bag allows inserting the same value multiple times. Each insert registers internally as a "weight" and you can consult and modify it later. Use this implementation in most cases, as it uses hashing techniques, which are quite effective. If you need ordered elements, see the `TSortedBag<T>` collection.
* **Data structure:** hash-based dictionary.
* **Relation:** Each key associated with a weight, similar to set.
* **Capacity:** controllable for bucket array.
* **Element order:** unspecified.
* **Duplicate elements:** not allowed, combined.
* **Indexed access:** not supported.
* **Insertion:** not supported.
* **Addition:** `Add`, fast, hashes used (slow when capacity grows).
* **Removal:** `Remove`, fast, hashes used.
* **Lookup:** `Contains`, fast, hashes used.
* **Sorting:** not supported.
* **Reversing:** not supported.
* **Enumeration:** slow for large number of elements.
* **Enex:** slow.

### `TSortedBag<T>`

* **When to use:** This collection performs exactly as `TBag<T>` but keeps the elements in an AVL tree and sorted at all times. Its insertion and removal times are pretty bad but lookup is fast.
* **Data structure:** AVL tree-based dictionary.
* **Relation:** Each key associated with a weight, similar to set.
* **Capacity:** not supported.
* **Element order:** collection specified, ordered.
* **Duplicate elements:** not allowed, combined.
* **Indexed access:** not supported.
* **Insertion:** not supported.
* **Addition:** `Add`, slow, searches for proper location, tree balancing.
* **Removal:** `Remove`, slow, tree balancing.
* **Lookup:** `Contains`, very fast, AVL tree lookup.
* **Sorting:** not supported, elements are ordered by default.
* **Reversing:** not supported.
* **Enumeration:** fast, tree is traversed left-to-right.
* **Enex:** fast.

### `TDictionary<TKey,TValue>`

* **When to use:** Use this collection if you need to keep a number of key-value pairs in an optimized manner. This dictionary implementation uses hashing techniques to store each key-value pair. It allows only distinct keys and doesn't guarantee key or value ordering. Use this implementation if order is unimportant, as it has the best performance in most cases.
* **Data structure:** bucket array, entry array.
* **Relation:** One value per key.
* **Capacity:** controllable.
* **Key order:** unspecified.
* **Value order:** unspecified.
* **Duplicate keys:** not allowed, error.
* **Duplicate values:** allowed.
* **Addition:** `Add`, fast, hashes used (slow when capacity grows).
* **Removal:** `Remove`, fast, hashes used.
* **Lookup:** `ContainsKey`, fast, hashes used. `ContainsValue`, very slow, discouraged.
* **Enumeration:** slow, entry array needs traversal, many items are null.
* **Enex:** slow.

### `TLinkedDictionary<TKey,TValue>`

* **When to use:** This implementation is mostly identical to `TDictionary<TKey, TValue>`. The only difference is the way the entries are stored internally (a linked list instead of an array). This difference also ensures that values are kept in insertion order per key. Another benefit is the simple and fast enumeration that is possible in this dictionary. If you care about these details, then use this dictionary.
* **Data structure:** bucket array, entry doubly-linked list.
* **Relation:** One value per key.
* **Capacity:** controllable for bucket array.
* **Key order:** unspecified.
* **Value order:** insertion per key.
* **Duplicate keys:** not allowed, error.
* **Duplicate values:** allowed.
* **Addition:** `Add`, fast, hashes used.
* **Removal:** `Remove`, fast, hashes used.
* **Lookup:** `ContainsKey`, fast, hashes used. `ContainsValue`, slower for large number of pairs.
* **Enumeration:** fast.
* **Enex:** fast.

### `TSortedDictionary<TKey,TValue>`

* **When to use:** This implementation uses an AVL tree to store the key-value pairs. No hashing is used. Insertion and removal are slow, but lookup is fast. Also, the keys are always kept in a sorted form. If you care about these details, use this set, otherwise use `TDictionary<TKey, TValue>`, which is better performance-wise.
* **Data structure:** AVL tree.
* **Relation:** One value per key.
* **Capacity:** not supported.
* **Key order:** collection defined, ordered.
* **Value order:** unspecified.
* **Duplicate keys:** not allowed, error.
* **Duplicate values:** allowed.
* **Addition:** `Add`, slow, searches for proper location, tree balancing.
* **Removal:** `Remove`, slow, tree balancing.
* **Lookup:** `ContainsKey`, very fast, AVL-tree lookup. `ContainsValue`, slow, left-to-right tree traversal.
* **Enumeration:** fast, tree is traversed left-to-right.
* **Enex:** fast.

### `TMultiMap<TKey,TValue>`

* **When to use:** A multi-map is essentially a dictionary that associates each key with multiple values. This particular implementation uses a hash-based dictionary and simple array-based lists to store the keys and values. This means that most operations are fast (excluding value-related lookups). Note that a key can be associated to duplicate values. If you need a multi-map that restricts the values to be unique, use a distinct multi-map.
* **Relation:** multiple values per key.
* **Capacity:** controllable.
* **Key order:** unspecified.
* **Value order:** insertion per key.
* **Duplicate keys:** not allowed, combined.
Duplicate values: allowed per collection and per key.
* **Addition:** `Add`, fast, hashes used (slow when capacity grows).
* **Removal:** `Remove`, slow for large number of elements.
* **Lookup:** `ContainsKey`, fast, hashes used. `ContainsValue`, very slow, discouraged.
* **Enumeration:** slow, each key is repeated per number of attached values.
* **Enex:** slow.

### `TDistinctMultiMap<TKey,TValue>`

* **When to use:** If you need a multi-map that associates with a key a number of distinct values, this is the best choice. The underlying collections used are a hash-based dictionary and hash-based sets to store the values.
* **Data structure:** hash-based dictionary, hash-based sets.
* **Relation:** multiple and distinct values per key.
* **Capacity:** controllable.
* **Key order:** unspecified.
* **Value order:** unspecified.
* **Duplicate keys:** not allowed, combined.
* **Duplicate values:** allowed per collection, not allowed per key, silent.
* **Addition:** `Add`, fast, hashes used (slow when capacity grows).
* **Removal:** `Remove`, slow for large number of elements.
* **Lookup:** `ContainsKey`, fast, hashes used. `ContainsValue`, fast, hashes used.
* **Enumeration:** slow, each key is repeated per number of attached values.
* **Enex:** slow.

### `TSortedDistinctMultiMap<TKey,TValue>`

* **When to use:** If you need a multi-map that associates with a key a number of distinct values and care about the key ordering, use this collection. The underlying collections used are an AVL-tree based dictionary and hash-based sets to store the values. The keys are ordered but the values are not.
* **Data structure:** AVL tree-based dictionary, hash-based sets.
* **Relation:** multiple and distinct values per key.
* **Capacity:** not supported.
* **Key order:** collection specified, ordered.
* **Value order:** unspecified.
* **Duplicate keys:** not allowed, combined.
* **Duplicate values:** allowed per collection, not allowed per key, silent.
* **Addition:** `Add`, slow, needs tree balancing.
* **Removal:** `Remove`, slow, needs tree balancing.
* **Lookup:** `ContainsKey`, fast, tree based lookup. `ContainsValue`, fast, tree and hashes used.
* **Enumeration:** fast, each key is repeated per number of attached values.
* **Enex:** fast.

### `TDoubleSortedMultiMap<TKey,TValue>`

* **When to use:** If you need a multi-map that associates with a key a number of values and care about the key ordering, use this collection. The underlying collections used are an AVL tree-based dictionary and an array-based sorted list to store the values. This multi-map allows duplicate values for the same key.
* **Data structure:** AVL tree-based dictionary, sorted lists.
* **Relation:** multiple values per key.
* **Capacity:** not supported.
* **Key order:** collection specified, ordered.
* **Value order:** collection specified, ordered per key.
* **Duplicate keys:** not allowed, combined.
* **Duplicate values:** allowed per collection and per key.
* **Addition:** `Add`, slow, needs tree balancing operation.
* **Removal:** `Remove`, slow, needs tree balancing operation.
* **Lookup:** `ContainsKey`, fast, tree-based lookup. `ContainsValue`, fast, binary search algorithm used.
* **Enumeration:** fast, each key is repeated per number of attached values.
* **Enex:** fast.

### `TDoubleSortedDistinctMultiMap<TKey,TValue>`

* **When to use:** If you need a multi-map that associates with a key a number of distinct and sorted values and care about the key ordering, use this collection. The underlying collections used are an AVL tree-based dictionary and AVL tree-based sets to store the values.
* **Data structure:** AVL tree-based dictionary, AVL-tree-based sets.
* **Relation:** multiple and distinct values per key.
* **Capacity:** not supported.
* **Key order:** collection specified, ordered.
* **Value order:** collection specified, ordered per key.
* **Duplicate keys:** not allowed, combined.
* **Duplicate values:** allowed per collection, not allowed per key, silent.
* **Addition:** `Add`, slow, needs two tree balancing operations.
* **Removal:** `Remove`, slow, needs two tree balancing operations.
* **Lookup:** `ContainsKey`, fast, tree-based lookup. `ContainsValue`, fast, tree based lookup used.
* **Enumeration:** fast, each key is repeated per number of attached values.
* **Enex:** fast.

### `TBidiMap<TKey,TValue>`

* **When to use:** A bidi-map (bidirectional map) is a special composite collection that considers both keys and values as "keys". Each key is associated with a number of values and each value is associated with a number of keys. This implies the fact that keys and values must be distinct. This implementation of bidi-map is the recommended one because it uses hash-based dictionaries, which provide constant performance for most operations.
* **Data structure:** two hash-based dictionaries.
* **Relation:** multiple values per key, multiple keys per value.
* **Capacity:** controllable.
* **Key order:** unspecified.
* **Value order:** unspecified.
* **Duplicate keys:** not allowed, combined.
* **Duplicate values:** not allowed, combined.
* **Addition:** `Add`, fast, hashes used (slow when capacity grows).
* **Removal:** `Remove`, slow for large number of elements.
* **Lookup:** `ContainsKey`, `ContainsValue`, fast, hashes used.
* **Enumeration:** slow, each key is repeated per number of attached values.
* **Enex:** slow.

### `TSortedBidiMap<TKey,TValue>`

* **When to use:** Use this bidi-map implementation if you need to keep the keys sorted while not caring about the values. Insertions and removals are slower in this implementation (one balancing operation), while lookup is faster for keys. If you don't need to keep the keys or values sorted, use `TBidiMap<TKey,TValue>`. If you need both keys and values sorted, use `TDoubleSortedBidiMap<TKey,TValue>`.
* **Data structure:** one AVL-tree-based and one hash-based dictionaries.
* **Relation:** multiple values per key, multiple keys per value.
* **Capacity:** uncontrollable.
* **Key order:** collection defined, ordered.
* **Value order:** collection defined, ordered.
* **Duplicate keys:** not allowed, combined.
* **Duplicate values:** not allowed, combined.
* **Addition:** `Add`, slow, tree balancing operation.
* **Removal:** `Remove`, slow, tree balancing operation.
* **Lookup:** `ContainsKey`, `ContainsValue`, fast, AVL/hash lookup, .
* **Enumeration:** slow, each key is repeated per number of attached values.
* **Enex:** slow.

### `TDoubleSortedBidiMap<TKey,TValue>`

* **When to use:** Use this bidi-map implementation if you need to keep the keys and values sorted. Insertions and removals are pretty slow in this implementation (two balancing operations), while lookup is fast for both keys and values. If you don't need to keep the keys or values sorted, use `TBidiMap<TKey,TValue>`. If you need only sorted keys and not values, use `TSortedBidiMap<TKey,TValue>`.
* **Data structure:** two AVL-tree-based dictionaries.
* **Relation:** multiple values per key, multiple keys per value.
* **Capacity:** not supported.
* **Key order:** collection defined, ordered.
* **Value order:** collection defined, ordered.
* **Duplicate keys:** not allowed, combined.
* **Duplicate values:** not allowed, combined.
* **Addition:** `Add`, slow, two tree balancing operations.
* **Removal:** `Remove`, slow, two tree balancing operations.
* **Lookup:** `ContainsKey`, `ContainsValue`, fast, AVL tree lookup.
* **Enumeration:** fast, each key is repeated per number of attached values.
* **Enex:** slow.

### `TBidiDictionary<TKey,TValue>`

* **When to use:** A bidirectional dictionary is equivalent to a simple dictionary in most regards. The only new thing it brings to the table is the fact that keys and values are treated as keys. A bidirectional dictionary is a convenience collection made up from two dictionaries (keys to values, values to keys).
* **Data structure:** two hash-based dictionaries.
* **Relation:** one value per key. one key per value.
* **Capacity:** controllable.
* **Key order:** unspecified.
* **Value order:** unsecified.
* **Duplicate keys:** not allowed, error.
* **Duplicate values:** not allowed, error.
* **Addition:** `Add`, slow, both dictionaries are checked before inserting.
* **Removal:** `Remove`, slow both dictionaries are removed from.
* **Lookup:** `ContainsKey`, fast, hashes used. `ContainsValue`, fast, hashes used.
* **Enumeration:** slow, entry array needs traversal, many items are null.
* **Enex:** slow.

### `TSortedBidiDictionary<TKey,TValue>`

* **When to use:** This specific implementation of a bidirectional map uses one AVL-based dictionary and one hash-based dictionary (for values). Use it if you need sorting on the keys but don't care about values. If you need sorting on the values and don't care about keys, just define the values as key and vice-versa. As far as advices go, this is the best implementation for most cases.
* **Data structure:** one AVL-tree based dictionary for key relations and one hash-based dictionary for value relations.
* **Relation:** one value per key. one key per value.
* **Capacity:** uncontrollable.
* **Key order:** collection defined, ordered.
* **Value order:** unspecified.
* **Duplicate keys:** not allowed, error.
* **Duplicate values:** not allowed, error.
* **Addition:** `Add`, slow, both dictionaries are checked before inserting.
* **Removal:** `Remove`, slow both dictionaries are removed from.
* **Lookup:** `ContainsKey`, fast, AVL tree lookup. `ContainsValue`, fast, hashes used.
* **Enumeration:** fast, travesting the key relations dictionary (AVL).
* **Enex:** fast.

### `TDoubleSortedBidiDictionary<TKey,TValue>`

* **When to use:** This bidirectional dictionary implementation uses two AVL trees. Use it if you care about keys and values being sorted.
* **Data structure:** two AVL-tree based dictionaries.
* **Relation:** one value per key. one key per value.
* **Capacity:** not supported.
* **Key order:** collection defined, ordered.
* **Value order:** collection defined, ordered.
* **Duplicate keys:** not allowed, error.
* **Duplicate values:** not allowed, error.
* **Addition:** `Add`, slow, both dictionaries are checked before inserting.
* **Removal:** `Remove`, slow both dictionaries are removed from.
* **Lookup:** `ContainsKey`, fast, AVL tree lookup. `ContainsValue`, fast, AVL tree lookup.
* **Enumeration:** fast, travesting the key relations dictionary (AVL).
* **Enex:** fast.
