---
comments: false
author: Pablo Pareja
date: 2013-10-15 04:33:27
layout: post
slug: Bio4j 0.9, and the billion relationships are here!
title: Bio4j 0.9, and the billion relationships are here!
categories:
- Releases
tag:
- release
---

Hi everyone!

So [**Bio4j 0.9**](https://github.com/bio4j/Bio4j/wiki/Bio4j-0.9) finally made its way out and it's here bringing you more than 1 billion relationships. These are approximately its main numbers:

- **1.216.993.547** relationships
- **190.625.351** nodes
- **584.436.429** properties

A lot of new features and improvements have been incorporated including the following, _(I will go into more detail in later posts specifically dedicated to each of them)_

## Refurbishing the domain model

We have introduced a new level of abstraction for the domain model by decoupling the inner database implementation from the relationships among entities themselves. An interface has been developed for each node and relationship present in the database, including methods to access both the properties of the entity it represents and utility methods that allow to easily navigate to the entities that will be linked to it. 

All this can be found under the package _com.era7.bioinfo.bio4j.model_

## New Blueprints layer

<img src="/images/blueprints.png" style="float:left"> Apart from the set of interfaces we've developed another layer for the domain model using [**Blueprints**](http://blueprints.tinkerpop.com/). This way we're going one step further for making the domain model independent from the choice of database technology.

## New Titan implementation

<img src="/images/titan.png" style="float:left"> After the problems we had with the so called [_**supernodes**_](http://thinkaurelius.com/2012/10/25/a-solution-to-the-supernode-problem/) - which are quite common indeed, we decided to give a try to [**Titan Graph Database**](http://thinkaurelius.github.io/titan/) technology and see how it behaves in such situation. Both wrapper classes for each entity and importing programs have already been implemented. This new prototype needs however some testing but be sure you'll be hearing more about this pretty soon! ;)

## Bye bye reference node

We decided to finally stop using the reference node for indexing purposes _(actually there's no use for it anymore in Bio4j)_. 

I have to admit it, I never was a fan of it and it was about time to do it. So now auxiliary relationships such as, for instance, _MainTaxonRel_ or _MainDatasetRel_ have been replaced by a standard node index.

## Bug fixes

This new release comes with many fixes including:

1. **EnzymeNode**: The node type property was not stored in previous releases.
2. **DatasetNode**: Name property was not properly indexed. 
3. **OrganismNode**: NCBI tax-id property was not stored in some scenarios.
4. Redundant sequence conflict feature relationships have been fixed.
5. Duplicated submissions fixed
6. ProteinUnpublishedObservationCitation relationship was missing
7. The following node types were not properly indexed by their type till now: _BookNode, ArticleNode, OnlineArticleNode, SubmissionNode, PatentNode, PublisherNode, OnlineJournalNode, JournalNode_

## Java 7

Bio4j uses Java 7 now ;)

OK, so that's all for now, I'll be posting much more information about this new release soon.

Cheers!

[**@pablopareja**](http://twitter.com/pablopareja)


