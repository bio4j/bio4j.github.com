---
layout: post
title: "Bio4j: updates"
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

We've spent the past few months working hard on Bio4j; and the results are ...

as future-proof as possible and let me say that things look great. As we gain more users (and contributors), we're also trying to make our plans and development roadmap more open. This post should give you an idea to where Bio4j is today, where it is going, and when it is expected to be there.

## Bio4j now

### bio4j/bio4j, a new graph schema and API

We have now a strongly typed graph schema and traversal API, based on [angulillos](https://github.com/bio4j/angulillos) (more about angulillos later). With it, you can write traversals over Bio4j data abstractly, and then execute them over any implementation. These queries are checked to be correct with respect to the Bio4j schema. Vertices and edges are now part of graphs, which can declare dependencies; writing your own extensions to the model is now much easier than before. As part of these changes we did a thorough graph-per-graph review of the Bio4j model, which resulted in some significant improvements.

Of course a schema is not that useful without actual data conforming to it; we also wrote generic importers for all graphs. These importers can be executed using any implementation of the angulillos API.

### bio4j/bio4j-titan, a Titan-based implementation and data distribution

With much of the work already done at bio4j/bio4j, providing a data distribution of Bio4j becomes pretty simple; you just need to

1. implement angulillos for your database technology of choice; this is what you have for [Titan](http://thinkaurelius.github.io/titan/) in [bio4j/angulillos-titan](https://github.com/bio4j/angulillos-titan).
2. if your database has support for type definitions and schemas, create those corresponding to the Bio4j schema; what we do for each graph in [bio4j/bio4j-titan](https://github.com/bio4j/bio4j-titan)

We finished running the importing process for all graphs just a few hours ago. A pretty sizable `.tar` containing all the Titan files is available from an S3 bucket. With that you just need to spin an EC2 instance, download an extract that and pass the folder to the corresponding Bio4j graph class. Or, if you want 

### bio4j/angulillos, generic typed property graphs in Java

Writing _correct_ queries for Bio4j was becoming harder and harder as we integrated more databases and resources, and we had no way of expressing the graph schemas, even for documentation purposes. That is what [angulillos](https://github.com/bio4j/angulillos) strives to solve. You can think of angulillos as a strongly typed version of the property graph model: first you describe a graph schema in terms of types, and then you can write generic traversals over it, which are guaranteed to be well-typed. This means that for example

- you cannot retrieve the outgoing edges of and edge
- and you can get the tweets that a user tweeted, but not the users that a tweet follows!

The API is really straightforward to implement: [angulillos-titan](https://github.com/bio4j/angulillos-titan) can serve as an example.



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
- standard data import brings easier in-house deployment tool

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

