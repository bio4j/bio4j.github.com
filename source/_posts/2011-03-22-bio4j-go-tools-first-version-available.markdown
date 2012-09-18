---
comments: true
date: 2011-03-22 18:57:33
layout: post
slug: bio4j-go-tools-first-version-available
title: Bio4j Go Tools (first version available)
wordpress_id: 9
categories:
- Bio4jGoTools
tag:
- gene-ontology
- go
---

Hi everyone!

As you may have seen Bio4j has already started making his way through the bioinformatics world; however there's not as much information as there should be about the project yet.
That's where Bio4j Go Tools comes in as the first real-world example using Bio4j as back-end.

Bio4j Go Tools is a group of [Gene Ontology](http://www.geneontology.org/) related services and apps. _(You can find more information about this in the [wiki](http://wiki.bio4j.com/bio4jgotools))_

The services provided so far are:
- [Uniprot](http://www.uniprot.org) protein GO annotations retrieving
- GoSlim requests with custom Slim term sets.

Both services results and client-server communication are XML based following a really simple and intuitive structure.

A user-friendly [AIR application](https://github.com/pablopareja/Bio4jGoTools) has been developed allowing the user to directly use these services abstracting the logic of the different requests.

[caption id="attachment_15" align="aligncenter" width="739" caption="Bio4j Go Tools AIR app screenshot"][![](http://blog.bio4j.com/wp-content/uploads/2011/03/Bio4jGoToolsScreenShot.jpg)](https://github.com/pablopareja/Bio4jGoTools)[/caption]

Enjoy it  ;)
