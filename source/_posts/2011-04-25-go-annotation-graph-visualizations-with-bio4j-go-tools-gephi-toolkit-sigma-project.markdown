---
comments: true
date: 2011-04-25 16:30:01
layout: post
slug: go-annotation-graph-visualizations-with-bio4j-go-tools-gephi-toolkit-sigma-project
title: GO Annotation graph visualizations with Bio4j Go Tools + Gephi Toolkit + SiGMa
  project
wordpress_id: 50
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

Hello everyone ;)

We're back from Easter holidays bringing some cool graph visualization stuff. 

Bio4j Go Tools includes now a new feature providing you with an interactive graph visualization for protein GO annotations.
The url of the app is still the [same old one](http://gotools.bio4j.com:8080/Bio4jTestServer/Bio4jGoToolsWeb.html).

On the server side, we're using [Gephi Toolkit](http://gephi.org/toolkit/) for applying layout algorithms while the corresponding Gexf file is generated with the class [GephiExporter](https://github.com/pablopareja/BioinfoUtil/blob/master/src/main/java/com/era7/lib/bioinfo/bioinfoutil/gephi/GephiExporter.java) from [BioinfoUtil](https://github.com/pablopareja/BioinfoUtil) project. The service is included in the project [Bio4jTestServer](https://github.com/bio4j/Bio4jTestServer), specifically the servlet [GetGoAnnotationGexfServlet](https://github.com/bio4j/Bio4jTestServer/blob/master/src/java/com/era7/bioinfo/bio4j/server/servlet/GetGoAnnotationGexfServlet.java).

Regarding to the client side, we're using the open-source project [SiGMa](https://github.com/jacomyal/SiGMa) for graph-visualization.

Here you have a screenshot of a small sample of GO Annotation results:

[![](http://blog.bio4j.com/wp-content/uploads/2011/04/goAnnotationGraphScreenShot-1024x725.jpg)](http://gotools.bio4j.com:8080/Bio4jTestServer/Bio4jGoToolsWeb.html)
