---
layout: post
title: "Bio4j: a roadmap"
date: 2015-03-16 00:43
comments: false
author: Eduardo Pareja-Tobes
categories:
- News
tag:
- news
- code
- roadmap
- future
- overview
---

> The scope for this is: what's going to happen during 2015 in Bio4j. The goal I see for this year is **Bio4j `1.0`**; what's so special about `1.0`? From wikipedia: _a major milestone, indicating that the software is "complete", that it has all major features, and is considered reliable enough for general release_. 
> 
> Right now this is just a list of points I want covered. Feel free to add / remove things, or comment in the commits if you prefer.
> 
>  **ETA**: Estimated time of arrival
>  
>  For each section there's a list of people involved, where the order is supposed to reflect the (decreasing) degree of involvement in that part.

## New data

We are focused on bringing more genomics data to Bio4j. We are already working on ways of modeling sequences and position-based (annotations) data in a graph paradigm, which we will use for the integration of Human genome data, including assemblies and annotations integrated with the rest of Bio4j graphs.

[Reactome][Reactome] is a possibility, as sequence data: RefSeq? others?

- **People** [@eparejatobes][@eparejatobes] [@rtobes][@rtobes] [@marina-manrique][@marina-manrique] [@epareja][@epareja]
- **ETA** end of April for the human genome data?

## Bio4j Scala API

Based on _Scarph_, the work of the nice guys at [oh no sequences!](http://ohnosequences.com). If you're working (or plan to) work with graphs in Scala, definitely keep an eye on this!! Incredibly expressive super typed. 

Complete interoperability with the Java API in terms of data; data imported with the Java API will be accessible through the Scala API. We will work first on writing the model schema in Scarph, with AWS deployment based on [Statika](http://ohnosequences.com/statika) coming after that. We will maintain the two (Java and Scala) Bio4j schema representations in sync, making sure that you have access to the same graphs and data.

- **People** [@eparejatobes][@eparejatobes] [@laughedelic][@laughedelic]
- **ETA** May/June?

## Release and data distribution improvements

We want our data distribution and releases to be more predictable, coherent and automated. There will be in-sync automated data import and releases for the Titan-based data distribution, every **6 months**. You will be able to specify statically which version of the imported data you want to use; for this we will develop a concept of data distribution, which will also depend on the import code that was ran to generate it. The import code will be separated from the Bio4j schema.

On a different angle, we are going to start offering a smaller data subset based on SwissProt, mainly for testing or exploratory purposes. We hope that this will lower the entry barrier for those who just want to play with Bio4j and see what it has to offer.

- **People** [@laughedelic][@laughedelic] [@eparejatobes][@eparejatobes] [@pablopareja][@pablopareja]
- **ETA** September?

## Java API improvements

The work here will mostly be on taking Angulillos to 1.0 and and start the development of the 1.x series, which will have support for an even more expressive API.

For the 1.x series, we want to extend angulillos with more sophisticated combinators for traversals. Use any Tinkerpop3 backend! use Bio4j with virtually _any_ graph db. TinkerPop is now [Apache TinkerPop](https://tinkerpop.incubator.apache.org/).

- **People** [@eparejatobes][@eparejatobes] [@laughedelic][@laughedelic]
- **ETA** April for Angulillos 1.0, October? (depends on TinkerPop3) for Angulillos 1.x first releases

## Neo4j distribution

We could finish the implementation of angulillos-neo4j, write bio4j/bio4j-neo4j. Is this actually valuable? If we develop a version of angulillos capable of wrapping any Tinkerpop3-compatible graph DB, we could use the tinkerpop3 version of Neo4j with that.

- **People** [@pablopareja][@pablopareja] [@eparejatobes][@eparejatobes]
- **ETA** October/November?

## Documentation

Examples for every graph, model docs integrated with the source code. A paper; by the time this post gets public we should already have a preprint.

- **People** [@eparejatobes][@eparejatobes] [@rtobes][@rtobes] [@pablopareja][@pablopareja] [@marina-manrique][@marina-manrique]
- **ETA** April/May?

## Bio4j 1.0

The idea is that by the end of 2015 we should have a API-stable, tested, super-cool version of Bio4j which will be Bio4j 1.0. We see as must-have for that

1. a stable API and model, available in both Java and Scala versions
2. comprehensive documentation and examples
3. solid, easy to use tools for AWS deployment
4. integrated data covering all the structured data needed for the most common Bioinformatics tasks
5. automated periodic data releases


<!-- links -->

[@eparejatobes]: https://github.com/eparejatobes
[@pablopareja]: https://github.com/pablopareja
[@laughedelic]: https://github.com/laughedelic
[@rtobes]: https://github.com/rtobes
[@marina-manrique]: https://github.com/marina-manrique
[@epareja]: https://github.com/epareja

[TinkerPop]: https://tinkerpop.incubator.apache.org/
[Reactome]: http://www.reactome.org/

 
