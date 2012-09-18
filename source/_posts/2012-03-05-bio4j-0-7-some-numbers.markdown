---
comments: true
date: 2012-03-05 12:28:27
layout: post
slug: bio4j-0-7-some-numbers
title: Bio4j 0.7, some numbers
wordpress_id: 667
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

There have already been a good few posts showing different uses and applications of Bio4j, but what about Bio4j data itself?
Today I'm going to show you some **basic statistics** about the different types of nodes and relationships Bio4j is made up of.
Just as a heads up, here are the **general numbers of Bio4j 0.7** :




  * Number of Relationships: **530.642.683**

	
  * Number of Nodes: **76.071.411**
	
	
  * Relationship types: **139**

	
  * Node types: **38**



Ok, but how are those relationships and nodes distributed among the different types? 
In this chart you can see the **first 20 Relationship types** _(click on the image below to check the interactive chart_):

[![](http://blog.bio4j.com/wp-content/uploads/2012/03/first20RelTypesChart-1024x797.png)](http://bio4j.com/imgs/release07/relsBarChart.html)

Here, the same thing but for the **first 20 Node types** _(click on the image below to check the interactive chart_):

[![](http://blog.bio4j.com/wp-content/uploads/2012/03/first20NodeTypesChart-1024x794.png)](http://bio4j.com/imgs/release07/nodesBarChart.html)

You can also check these two files including the numbers from all existing types:



	
  * [Node statistics](https://s3-eu-west-1.amazonaws.com/bio4j-public/releases/0.7/statistics/Bio4j07NodeStatistics.txt)

	
  * [Relationship statiscis](https://s3-eu-west-1.amazonaws.com/bio4j-public/releases/0.7/statistics/Bio4j07RelStatistics.txt)



All this data was obtained with the program [**GetNodeAndRelsStatistics**](https://github.com/bio4j/Bio4jTools/blob/develop/src/com/era7/bioinfo/bio4j/tools/GetNodeAndRelsStatistics.java).

Have a good day!

[**@pablopareja**](http://twitter.com/pablopareja)


