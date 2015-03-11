---
layout: post
title: "Bio4j: updates"
date: 2015-03-11 17:18
comments: false
author: Eduardo Pareja-Tobes
categories:
- News
tag:
- news
- code
- data
- update
- overview
---

We've spent the past few months working _really_ hard on Bio4j. There has not been a lot of updates here basically because there were too many new things happening :) 

But now things are stabilizing and it's about time we start to introduce all the new features and improvements we have in store. In this first post I just want to give an overview of Bio4j's current state, going into more detail in subsequent posts.

## Bio4j now

### A new graph schema and API

We have now a strongly typed graph schema and traversal API in **[bio4j/bio4j](https://github.com/bio4j/bio4j)**, based on **[angulillos](https://github.com/bio4j/angulillos)** (more about angulillos later). With it, you can write traversals over Bio4j data abstractly, and then execute them over any implementation. These queries are checked to be correct both structurally (no source of a vertex) and with respect to the Bio4j schema. Vertices and edges are now part of graphs, which can declare dependencies; writing your own extensions to the model is now much easier than before. As part of these changes we did a thorough graph-per-graph review of the Bio4j model, which resulted in some significant improvements.

Of course a schema is not that useful without actual data conforming to it; we also wrote generic importers for all graphs. These importers can be executed using any implementation of the angulillos API.

### A Titan-based implementation and data distribution

With much of the work already done at the level of bio4j/bio4j, providing a data distribution of Bio4j becomes pretty simple; you just need to

1. implement angulillos for your database technology of choice; this is what you have for [Titan](http://thinkaurelius.github.io/titan/) in **[angulillos-titan](https://github.com/bio4j/angulillos-titan)**.
2. if your database has support for type definitions and schemas, create those corresponding to the Bio4j schema; what we do for each graph in **[bio4j-titan](https://github.com/bio4j/bio4j-titan)**

We finished running the importing process for all graphs just a few hours ago. A pretty sizable `.tar` containing all the Titan files is available from an S3 bucket. With that you just need to spin an EC2 instance, download and extract that and start using Bio4j. Or, if you don't want to use AWS, you can of course run the import process on your own infrastructure.

### Angulillos: generic typed property graphs in Java

Writing _correct_ queries for Bio4j was becoming harder and harder as we integrated more databases and resources, and we had no way of expressing the graph schemas, even for documentation purposes. That is what **[angulillos](https://github.com/bio4j/angulillos)** strives to solve. You can think of angulillos as a strongly typed version of the property graph model: first you describe a graph schema in terms of types, and then you can write generic traversals over it, which are guaranteed to be well-typed. This means that for example

- you cannot retrieve the outgoing edges of and edge
- and you can get the tweets that a user tweeted, but not the users that a tweet follows!

The API is really straightforward to implement, and its only dependency is Java 8 (for Streams and lambdas). **[angulillos-titan](https://github.com/bio4j/angulillos-titan)** can serve as an example of how this can be done.

### The future

The next post will be dedicated to a tentative roadmap, explaining what we are working on now; A (really nice) Scala API, data distribution and AWS deployment improvements, and new integrations of genomic data sources are coming in the following months!