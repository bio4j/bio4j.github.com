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

# Bio4j: a roadmap

> The scope for this is: what's going to happen during 2015 in Bio4j. Right now this is just a list of points I want covered. Feel free to add / remove things, or comment in the commits if you prefer.
> 
>  **ETA**: Estimated time of arrival
>  
>  For each section there's a list of people involved, where the order is supposed to reflect the (decreasing) degree of involvement in that part.

## New data

**People** [@eparejatobes][@eparejatobes] [@rtobes][@rtobes] [@marina-manrique][@marina-manrique] [@epareja][@epareja]

- **ETA?** Human genome data, other genomic data. support for stabbing queries etc
- **ETA?** [Reactome](http://www.reactome.org/)

## Scala API

**People** [@eparejatobes][@eparejatobes] [@laughedelic][@laughedelic]

- **ETA?** based on Scarph, the work of the nice guys at [oh no sequences!](http://ohnosequences.com). If you're working (or plan to) work with graphs in Scala, definitely keep an eye on this!! Incredibly expressive super typed. Complete interoperability with the Java API in terms of data
- **ETA?** AWS deployment based on [Statika](http://ohnosequences.com/statika)

## Release and data distribution improvements

**People** [@laughedelic][@laughedelic] [@eparejatobes][@eparejatobes] [@pablopareja][@pablopareja]

- **ETA?** in-sync automated data import and releases, every 6 months. Predictable, stable, coherent, automated.
- **ETA?** small testing data subset based on SwissProt.

<!-- - standard data import brings easier in-house deployment tool -->

## Java API improvements

**People** [@eparejatobes][@eparejatobes] [@laughedelic][@laughedelic]

- **ETA?** extend angulillos with more sophisticated combinators for traversals
- **ETA?** use any Tinkerpop3 backend! use Bio4j with virtually _any_ graph db

## Neo4j distribution

**People** [@pablopareja][@pablopareja] [@eparejatobes][@eparejatobes]

- **ETA?** Finish the implementation of angulillos-neo4j
- **ETA?** write bio4j/bio4j-neo4j

Is this actually valuable? If we develop a version of angulillos capable of wrapping any Tinkerpop3-compatible graph DB, we could use the tinkerpop3 version of Neo4j with that.

## Documentation

[@eparejatobes][@eparejatobes] [@rtobes][@rtobes] [@pablopareja][@pablopareja] [@marina-manrique][@marina-manrique]

- **ETA?** examples for every graph, model docs integrated with the source code
- **ETA?** a paper; by the time this gets public we should already have a preprint
 
## Datavis

**People** [@pablopareja][@pablopareja] [@rtobes][@rtobes] [@epareja][@epareja]

In principle they would all be data visualizations that don't imply server requests. _(That doesn't mean that we won't be developing webapps in the future but we can first get a lot from what we already have without complicating things much more)_ We could include:

- A few _dashboards_ built with [dc.js](http://dc-js.github.io/dc.js/) This kind of dataviz is quite nice to play with and people generally just love it _(even though they might not understand what's going on too much and they just click randomly at the charts to see what happens... :) )_
- We should definitely have some sort of minimally interactive visualization of Bio4j data model, IMHO this is crucial not only for people that are willing to use Bio4j but also to get the big picture of what kind of data is included in the database.
- A set of biologically-wise interesting/useful visualizations _( @rtobes @marina-manrique @epareja @eparejatobes please some help here! ;) )_


[@eparejatobes]: https://github.com/eparejatobes
[@pablopareja]: https://github.com/pablopareja
[@laughedelic]: https://github.com/laughedelic
[@rtobes]: https://github.com/rtobes
[@marina-manrique]: https://github.com/marina-manrique
[@epareja]: https://github.com/epareja
 
