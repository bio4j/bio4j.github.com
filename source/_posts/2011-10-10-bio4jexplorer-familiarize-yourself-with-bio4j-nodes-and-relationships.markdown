---
comments: true
date: 2011-10-10 17:19:03
layout: post
slug: bio4jexplorer-familiarize-yourself-with-bio4j-nodes-and-relationships
title: 'Bio4jExplorer: familiarize yourself with Bio4j nodes and relationships '
wordpress_id: 163
categories:
- Bio4jExplorer
tag:
- graph
- model
- nodes
- relationships
- visualization
---

Hi!

I just uploaded a new tool aimed to be used both as a reference manual and initial contact for Bio4j domain model: **[Bio4jExplorer](http://gotools.bio4j.com:8080/Bio4jExplorerServer/Bio4jExplorer.html)**
Bio4jExplorer allows you to:



	
  * Navigate through all nodes and relationships

	
  * Access the javadocs of any node or relationship

	
  * Graphically explore the neighborhood of a node/relationship

	
  * Look up for the different indexes that may serve as an entry point for a node

	
  * Check incoming/outgoing relationships of a specific node

	
  * Check start/end nodes of a specific relationship



[![](https://s3-eu-west-1.amazonaws.com/pablo-tests/Bio4jExplorerScreenshot.jpg)](http://gotools.bio4j.com:8080/Bio4jExplorerServer/Bio4jExplorer.html)

Both nodes and relationships in the graph visualization are clickable and lead to their respective record. Besides, you can choose between two different layout algorithms: Level layout and Circular layout ; _(nodes are also draggable so that you can configure the layout as you wish)_

For those interested on how this was done, on the server side I created an [AWS](http://aws.amazon.com/) [SimpleDB](http://aws.amazon.com/simpledb/) database holding all the information about the model of Bio4j, i.e. everything regarding nodes, relationships, indexes... _([here](https://github.com/bio4j/Bio4jTools/blob/develop/src/com/era7/bioinfo/bio4j/tools/CreateSimpleDBModel.java) you can check the program used for creating this database using [java aws sdk](http://aws.amazon.com/sdkforjava/))_
Meanwhile, in the client side I used [Flare prefuse](http://flare.prefuse.org/) AS3 library for the graph visualization.
As always with everything we do at [Oh no sequences!](http://www.ohnosequences.com), everything taking part in this tool is open source. You can check the different code repositories at the following addresses:



	
  * [**Bio4jExplorer: **](https://github.com/bio4j/Bio4jExplorer/tree/develop) Github repository for the AS3 client.

	
  * [**Bio4jExplorerServer: **](https://github.com/bio4j/Bio4jExplorerServer/tree/develop) Github repository for the java web server.

	
  * [**Bio4jTools: **](https://github.com/bio4j/Bio4jTools/tree/develop) Github repository including the program for creating the SimpleDB database.



All kinds of feedback/suggestions are welcome ;)

Pablo Pareja



