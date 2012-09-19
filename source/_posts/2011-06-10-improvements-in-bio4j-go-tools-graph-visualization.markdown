---
comments: false
date: 2011-06-10 15:36:37
layout: post
author: Pablo Pareja
slug: improvements-in-bio4j-go-tools-graph-visualization
title: Improvements in Bio4j Go Tools (Graph visualization)
wordpress_id: 105
categories:
- Bio4jGoTools
tag:
- annotation
- gene-ontology
- gephi
- graph
- sigma
- visualization
---

Hi everyone!

A new version of [Bio4j Go Tools viewer](http://gotools.bio4j.com:8080/Bio4jTestServer/Bio4jGoToolsWeb.html) is available, it includes improvements in the graph visualization of GO annotation results.
These are the new features:

- **Load GO annotation results from URL**: There's no need anymore to upload the XML file with the results everytime you want to see the graph visualization. Just enter the publicly accessible URL of the file and the server will directly get the file for you.
- **Restrict **the visualization to only **one GO sub-ontology **at a time: Terms belonging to different sub-ontologies (_cellular component, biological process, molecular function_) are not mixed up anymore.
- **Choice of layout algorithms**: You can choose between two different layout algorithms for the visualization, (_Yifan Hu_ and _Fruchterman Reingold_).
- **Customizable layout algorithm time:** Range of 1-10 minutes.

I also made a short **[tutorial](http://www.bio4j.com/videos/Bio4jGoToolsGraphUseTutorial.htm)** showing most of the features available in the following real-world use case: GO annotation results for [Era7 E. coli TY-2482 annotation with BG7 system of BGI V2 assembly](https://github.com/ehec-outbreak-crowdsourced/BGI-data-analysis/wiki/Era7-annotation-of-bgi-v2-assembly-of-e.-coli-ty-2482)

The corresponding GO Annotation results XML file is publicly available **[here](https://s3-eu-west-1.amazonaws.com/pablo-tests/EHECAnnotationVersion2.xml)**. Just click the button 'load file from url' and paste the address of the file. 

For those new to Bio4j Go Tools, two external open-source projects are used apart from Bio4j itself:

- [Gephi Toolkit](http://gephi.org/toolkit/)
- [SiGMa](https://github.com/jacomyal/SiGMa)

that's all for now, keep an eye on the blog/twitter for updates ;)
