---
layout: post
title: "Bio4j: updates and roadmap"
date: 2015-03-08 17:18
comments: false
author: Eduardo Pareja-Tobes
categories:
- News
tag:
- news
- code
- data
- roadmap
---

We've spent the past few months working on Bio4j **TODO more solid, future-proof, generic**; and let me say that things look great. As we gain more users (and contributors), we're also trying to make our plans and development roadmap more open. This post should give you an idea to where Bio4j is today, where it is going, and when it is expected to be there.

_Here goes summary of how things are organized right now_

----
**Now**

### A new abstract model

- in bio4j/bio4j
- write generic code with basically no deps against bio4j/bio4j (see the examples)
- easy to extend: build your own graphs, specify deps

#### Angulillos: typed property graphs in Java

- explain the typedness
- mention Java 8 Streams
- easy to implement for a particular graph store

### A default Titan-based data distribution

- available through S3 (within AWS)
- use it locally if you prefer (just run the import code)

### Documentation, preprint and examples

- a Bio4j preprint, submitted to bioRxiv in the next few days
- all the general documentation in one place [bio4j/bio4j](https://github.com/bio4j/bio4j)
- docs integrated with the code, in-sync

----
**Future**

### new data integrated

*ETA?*

- ucsc human genome data, other genomic data
- reactome
- ...

### Data release and distribution improvements

*ETA?*

- in-sync automated data import and releases
- improve usability from AWS
- standard data import brings easier in-house deployment too

### A Scala API

*ETA?*

- based on Scarph, the work of the nice guys at [oh no sequences!](http://ohnosequences.com). If you're working (or plan to) work with graphs in Scala, definitely keep an eye on this!!
- incredibly expressive super typed
- completely interoperability with the Java API in terms of data
- AWS deployment based on Statika

### Angulillos improvements

*ETA?*

- use any Tinkerpop3 backend! use Bio4j with virtually _any_ graph db
- extend angulillos with more sophisticated combinators for traversals

### Automated testing?

*ETA?*

### Datavis?

*ETA?*

- do you want to mention something here @pablopareja?

