---
comments: false
author: Pablo Pareja
date: 2012-10-30 04:33:27
layout: post
slug: Bio4j modules, adapt the database to your own needs
title: Bio4j modules, adapt the database to your own needs
categories:
- Features
tag:
- modules
- model
- reference
---

Hi!

**Bio4j 0.8 includes** a few **different data sources** and you may not always be interested in having all of them. For example you might be interested in playing around with the Gene Ontology DAG alone and let's face it, having to import a ~105 GB database to do that wouldn't make much sense...

That's why **the importing process is modular and customizable, allowing you to import just the data you are interested in**. 
Here's the big picture of where do entities and relationships come from in the general domain model:

[{% img /images/DomainModelWithDataSourceView.png %}](/images/DomainModelWithDataSourceView.png)


There's however one thing that you have to **keep in mind, you must be coherent when choosing the data sources** you want to have included in your database; that's to say, you cannot have for example the Uniref clusters without previously importing Uniprot KB, otherwise there wouldn't be proteins to connect to when importing the clusters!

Here you have a basic schema showing the dependencies among the different modules:

[{% img /images/ModuleDependencies.png %}](/images/ModuleDependencies.png)

_(Let me remind you that having here two data sources which are not connected by an arrow does NOT mean that they are not related/connected, but rather if it's possible to import them alone or instead they need other data sources to be already present in the database )_

I'm going to create a wiki page where I will be going into more detail regarding database size and importing process time depending on your modules choice, but meanwhile you can find some more information about how to do this in the [Importing Bio4j wiki page](https://github.com/bio4j/Bio4j/wiki/Importing-bio4j).

Have a good day!

[**@pablopareja**](http://twitter.com/pablopareja)


