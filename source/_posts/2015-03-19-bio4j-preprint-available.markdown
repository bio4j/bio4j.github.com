---
layout: post
title: "Bio4j preprint available"
date: 2015-03-22 18:20
comments: false
author: Eduardo Pareja-Tobes
categories:
- News
tag:
- news
- preprint
- publication
---

A citable preprint in the [bioRxiv][bioRxiv] describing Bio4j went online yesterday:

- **[Bio4j: a high-performance cloud-enabled graph-based data platform][Bio4j preprint]**

We hope will serve as a good introduction to what is Bio4j, and what it has to offer; especially so if, for getting a general idea of Bio4j, you would rather read prose than code. If you are using Bio4j for something that you want to publish, citing it is much easier now: all bioRxiv preprints are assigned a DOI. Comments, thoughts, opinions are all more than welcome! We will submit a paper based on this preprint to an open access journal. For completeness, here's the citation info and the abstract:

----
<br/>

### Bio4j: a high-performance cloud-enabled graph-based data platform

_Pablo Pareja-Tobes, Raquel Tobes, Marina Manrique, Eduardo Pareja, Eduardo Pareja-Tobes_ <br/>
**bioRxiv** -- **doi**: [10.1101/016758](http://dx.doi.org/10.1101/016758)

<!-- ### Abstract -->

**Background.** Next Generation Sequencing and other high-throughput technologies have brought a revolution to the bioinformatics landscape, by offering sheer amounts of data about previously unaccessible domains in a cheap and scalable way. However, fast, reproducible, and cost-effective data analysis at such scale remains elusive. A key need for achieving it is being able to access and query the vast amount of publicly available data, specially so in the case of knowledge-intensive, semantically rich data: incredibly valuable information about proteins and their functions, genes, pathways, or all sort of biological knowledge encoded in ontologies remains scattered, semantically and physically fragmented.

**Methods and Results.** Guided by this, we have designed and developed Bio4j. It aims to offer a platform for the integration of semantically rich biological data using typed graph models. We have modeled and integrated most publicly available data linked with proteins into a set of interdependent graphs. Data querying is possible through a data model aware Domain Specific Language implemented in Java, letting the user write typed graph traversals over the integrated data. A ready to use cloud-based data distribution, based on the Titan graph database engine is provided; generic data import code can also be used for in-house deployment.

**Conclusion.** Bio4j represents a unique resource for the current Bioinformatician, providing at once a solution for several key problems: data integration; expressive, high performance data access; and a cost-effective scalable cloud deployment model.

[Bio4j preprint]: http://biorxiv.org/content/early/2015/03/20/016758
[bioRxiv]: http://biorxiv.org/