---
comments: false
author: Pablo Pareja
date: 2011-12-19 21:35:41
layout: post
slug: using-bio4j-neo4j-graph-algo-component-for-finding-protein-protein-interaction-paths
title: Using Bio4j + Neo4j Graph-algo component for finding protein-protein interaction
  paths
wordpress_id: 343
tag:
- algorithms
- graph
- networks
- paths
- topology
---

Hi all!

Today I managed to find some time to check out the [**Graph-algo component**](http://wiki.neo4j.org/content/Graph-algo) from Neo4j and after playing with it plus Bio4j a bit, I have to say it seems pretty cool.
For those who don't know what I'm talking about, here you have the description you can find in Neo4j wiki:

> This is a component that offers implementations of common graph algorithms on top of Neo4j. It is mostly focused around finding paths, like finding the shortest path between two nodes, but it also contains a few different centrality measures, like betweenness centrality for nodes.

The algorithm for finding the **shortest path between two nodes** caught my attention and I started to wonder how could I give it a try applying it to the data included in Bio4j. I realized then that **protein-protein interactions** could be a good candidate so I got down to work and created the utility method:

- `findShortestInteractionPath(ProteinNode proteinSource, ProteinNode proteinTarget, int maxDepth, int maxResultsNumber)`

for getting at most `maxResultsNumber` paths between `proteinSource` and `proteinTarget` with a maximum path depth of `maxDepth`.
You can check the [**source code here** ](https://github.com/bio4j/Bio4jTools/blob/develop/src/com/era7/bioinfo/bio4j/tools/algo/InteractionsPathFinder.java)

I also did a **[small test program](https://github.com/bio4j/Bio4jTools/blob/develop/src/com/era7/bioinfo/bio4j/tools/algo/FindInteractionPaths.java)** which prints out the paths found between two proteins.

Even though I've missed having a wider choice of algorithms, it's really cool having at least this small set of algorithms already implemented, abstracting you from the low level coding. 
Apart from that, I've been thinking how **Bio4j could open a lot of doors for topology/network analysis around all the data it includes**. Such analysis could otherwise be quite hard to perform due to several reasons like the lack of data-integration between different datasources and the inner storage paradigm limiting topology/network analysis among others... 

**With Bio4j however, you just have to move around the nodes and get the information you're looking for!** ;)

[**@pablopareja**](http://www.twitter.com/pablopareja)

## comments

- **alper yilmaz**
  it’s getting more interesting.. :)
  that’s what I meant by “data-mining” during our skype conference.. cool..
- **Roji**
  I follow neo4j which much itrneest. It is a novel approach, however i think property searches are very important and neo4j is not very good at this.So for example, implementing a complete social website with millions of users would not be feasible with neo4j i think. I am not sure off course.What is also itrneesting is the upcoming of native XML database. They also solve the imdependace mismatch to a certain expend. However their model are trees not graphs, graphs are more general in this sense, but i think more optimizations are possible if you choose trees.
    - **ppareja**
    Hi Roji,
    Could you provide some reasons why you think property searches are not good with Neo4j?
    Regarding XML databases and other tree-oriented options, they definitely are great for many use cases, however when you have to deal with highly connected data they may not be enough. The case depicted in this blog post is a good example, even just modelling protein-protein interactions would not be possible with a tree – you get plenty of cycles which cannot be expressed with that paradigm…