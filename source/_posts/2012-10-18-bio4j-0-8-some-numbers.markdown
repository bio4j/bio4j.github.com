---
comments: false
author: Pablo Pareja
date: 2012-10-18 04:33:27
layout: post
slug: bio4j-0-8-some-numbers
title: Bio4j 0.8, some numbers
categories:
- Releases
tag:
- chart
- model
- nodes
- release
- statistics
---

Hi everyone!

Bio4j 0.8 was recently released and now it's time to have a deeper look at its numbers _(as you can see we are quickly approaching the 1 billion relationships and 100M nodes)_:

- Number of Relationships: **717.484.649**
- Number of Nodes: **92.667.745**
- Relationship types: **144**
- Node types: **42**


Ok, but how are those relationships and nodes distributed among the different types?  In this chart you can see the **first 20 Relationship types**:

[{% img /images/bio4j08first20RelTypes.png %}](/images/bio4j08first20NodeTypes.png)

Here, the same thing but for the **first 20 Node types**:

[{% img /images/bio4j08first20NodeTypes.png %}](/images/bio4j08first20NodeTypes.png)


You can also check these two files including the numbers for all the existing types:

- [Node statistics](https://s3-eu-west-1.amazonaws.com/bio4j-public/releases/0.8/statistics/Bio4j08NodeStatistics.txt)
- [Relationship statiscis](https://s3-eu-west-1.amazonaws.com/bio4j-public/releases/0.8/statistics/Bio4j08RelStatistics.txt)

All this data was obtained with the program [**GetNodeAndRelsStatistics**](https://github.com/bio4j/Bio4jTools/blob/master/src/com/era7/bioinfo/bio4j/tools/GetNodeAndRelsStatistics.java).

Have a good weekend!

[**@pablopareja**](http://twitter.com/pablopareja)


