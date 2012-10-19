---
comments: true
date: 2012-01-11 16:50:52
layout: post
slug: bio4j-release-0-7-is-out
title: Bio4j release 0.7 is out!
wordpress_id: 379
categories:
- Releases
tag:
- aws
- cloudformation
- cypher
- development
- ec2
- enzyme
- features
- graph
- gremlin
- visualization
---

Hi!

I'm happy to announce that the version 0.7 of Bio4j has been released. Check out the wide set of new features, tools and improvements:

## Expasy Enzyme database integration

From now on you have the whole [**Enzyme DB**](http://enzyme.expasy.org) included in Bio4j. For that, both a new node type and relationship type have been created: 

- [EnzymeNode](http://www.bio4j.com/docs/bio4jmodel/apidocs/com/era7/bioinfo/bio4jmodel/nodes/EnzymeNode.html)
-[ProteinEnzymaticActivityRel](http://www.bio4j.com/docs/bio4jmodel/apidocs/com/era7/bioinfo/bio4jmodel/relationships/protein/ProteinEnzymaticActivityRel.html) (this relationship connects a protein and the respective enzyme nodes associated to it)

All properties found have been incorporated to the enzyme node including:

- ID
- Official name
- Alternate names
- Cofactors
- Comments
- Catalytic activity
- Prosite cross-references

## Node type indexing

From now on, every node present in the database has a property _**nodeType**_ including its type which has been indexed. That way you can now access all nodes belonging to an specific type really easily. 

## Availability in all Regions

[{% img right http://d36cz9buwru1tt.cloudfront.net/logo_aws.gif %}](http://aws.amazon.com)

The AWS region you are based in won't be a problem for using Bio4j anymore. EBS Snapshots have been created in all regions as well as CloudFormation templates have been updated so that they can now be used regardless the region where you want to create the stack. 

> Only Asia Pacific (Singapore) `ap-southeast-1` region is not ready due to ongoing issues from AWS side regarding extremely slow S3 object downloading. Hope we can find a work around for this soon!

## New CloudFormation templates

### Basic Bio4j instance (updated)

The basic Bio4j instance template has been updated so that now you can use it from all zones. Check out more info about this in the [**updated blog post**](http://blog.bio4j.com/2011/12/bio4j-aws-cloudformation-your-own-fresh-baked-db-in-less-than-a-minute/)

### Basic Bio4j REST server

A new template has been developed so that you can easily deploy your Neo4j-Bio4j REST server in less than a minute.

This template is available in the following address:

- [**https://s3-eu-west-1.amazonaws.com/bio4j-public/Bio4jBasicRestServerTemplate.txt**](https://s3-eu-west-1.amazonaws.com/bio4j-public/Bio4jBasicRestServerTemplate.txt)

The steps you should follow to create the stack are really simple. Actually, you can follow as a guide [**this blog post**](http://blog.ohnosequences.com/2011/12/neo4j-server-and-aws-become-good-friends/) about the template I created for deploying a general Neo4j server, _only one or two parameters vary_

## Bio4j REST server

Once you get your server running thanks to the useful template I just mentioned before, using Neo4j WebAdmin with Bio4j as source you will be able to:

### Explore you database with the Data browser

Using the data browser tab of the Web administration tool you can explore in real-time the contents of Bio4j!


{% img /images/Bio4jDataBrowser-1024x699.png %}

In order to get visualizations like the one shown above, you should make use of **visualization profiles**. There you can specify different styles associated to customizable rules which can be expressed in terms of the node properties. Here's a screenshot showing how the visualization profile I used for the visualization above looks like:
  
{% img /images/Bio4jDataBrowserVizProfile-1024x752.png %}

> Just beware of one thing, the behavior of the tool is such that it does not distinguish between highly connected nodes and more isolated ones. Because of this, clicking nodes such as **Trembl** dataset node is not advisable unless you want to see it freeze forever -_this node has more than 15 million relationships linking it to proteins_.

## Run queries with Cypher

Cypher what?!

> [{% img right http://a1.twimg.com/profile_images/195275920/square-logo-no-text-2_normal.png %}](http://docs.neo4j.org/chunked/milestone/cypher-query-lang.html)
> **Cypher **is a **declarative language** which allows for expressive and efficient querying of the graph store without having to write traversers in code. It **focuses on the clarity of expressing what to retrieve** from a graph, **not how to do it**, in contrast to imperative languages like Java, and scripting languages like Gremlin.

A query to retrieve protein interaction circuits of length 3 with proteins belonging to Swiss-Prot dataset (limited to 5 results) would look like this in Cypher:

``` 
START d=node:dataset_name_index(dataset_name_index = "Swiss-Prot")
 MATCH d <-[r:PROTEIN_DATASET]- p, 
 circuit = (p) -[:PROTEIN_PROTEIN_INTERACTION]-> (p2) -[:PROTEIN_PROTEIN_INTERACTION]-> (p3) -[:PROTEIN_PROTEIN_INTERACTION]-> (p)
 return p.accession, p2.accession, p3.accession, p.accession
 limit 5
```

If you want to check out more examples of Bio4j + Cypher, check our [**Bio4j cypher cheat sheet**](https://github.com/bio4j/Bio4j/wiki/Bio4j-cypher-cheat-sheet) that we will be updating from time to time.

## Querying Bio4j with Gremlin
  
Gremlins? What do they have to do with Bio4j!?

> [{% img right https://raw.github.com/tinkerpop/gremlin/master/doc/images/gremlin-standing-small.png %}](https://github.com/tinkerpop/gremlin/wiki)
> **Gremlin is a graph traversal language that can be natively used in various JVM languages** - it currently provides native support for Java, Groovy, and Scala. However, it can express in a few lines of code what it would take many, many lines of code in Java to express.

Querying proteins associated to the interpro motif with id `IPR023306` in Bio4j with Gremlin would look like this: (limited to 5 results)

```
gremlin> g.idx('interpro_id_index')[['interpro_id_index':'IPR023306']].inE('PROTEIN_INTERPRO').outV.accession[0..4]
==> E2GK26
==> G3PMS4
==> G3Q865
==> G3PIL8
==> G3NNA4
gremlin> 
```

If you want to check out more examples of Bio4j + Gremlin, check our [**Bio4j gremlin cheat sheet**](https://github.com/bio4j/Bio4j/wiki/Bio4j-gremlin-cheat-sheet) that we will be updating from time to time.

## Bug fixes

1. **Dataset nodes** There was a bug in the importing process which resulted in the creation of a new dataset node everytime a new Uniprot entry was stored. Now everything's fine!


So that's all for now! Hope you enjoy all this changes and new features I've been working on in the last couple of months. As always, feel free to give any feedback you may have, I'm looking forward to it ;)

[**@pablopareja**](http://www.twitter.com/pablopareja)
