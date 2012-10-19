---
comments: false
date: 2011-03-22 18:57:33
layout: post
author: Pablo Pareja
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

[{% img /images/Bio4jGoToolsScreenShot.jpg 739 Bio4j Go Tools AIR app screenshot %}](https://github.com/pablopareja/Bio4jGoTools)

Enjoy it  ;)

## comments

- [**alper yilmaz**](http://alperyilmaz.org/blog) 
  When I put a protein id, the tools is asking for location of GoSlim.xml file, where can I retrieve this file? I checked the download page of Gene Ontology (http://www.geneontology.org/GO.downloads.ontology.shtml) but couldn’t find it.

  thanks.

  - **Pablo Pareja** Hi Alper,
  You’re right it can be a bit confusing the way the app asks for a file location to save the results.
  I just made some small changes to the app so that things are more straightforward. This version (v 1.01) is already available at Bio4jGoTools github repository

- [**alper yilmaz**](http://alperyilmaz.org/blog) 
  Nevermind, it was asking location and filename to save the results. So, there’s no problem..
  Thanks..
  
