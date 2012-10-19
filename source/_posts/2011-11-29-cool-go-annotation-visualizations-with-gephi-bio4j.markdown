---
comments: false
author: Pablo Pareja
date: 2011-11-29 16:46:56
layout: post
slug: cool-go-annotation-visualizations-with-gephi-bio4j
title: Cool GO annotation visualizations with Gephi + Bio4j
wordpress_id: 244
categories:
- Bio4jGoTools
tag:
- annotation
- gene-ontology
- gephi
- graph
- visualization
---

Hi everyone!

After a few months without finding the opportunity to play with [Gephi](http://gephi.org), it was already time to dedicate a lab day to this.
I thought that a good feature would be having the equivalent **.gexf file** for the current graph representation available at the tab "GoAnnotation Graph Viz"; so that you could play around with it in Gephi adapting it to your specific needs.
Then I got down to work and this is what happened:

First of all I was really happy to see how there was a new version of Gephi (0.8) as well as a good bunch of new (at least for me... :D) layout algorithms plugins available like Parallel Force Atlas, Circular Layout or Layered Layout. So once I have downloaded and installed everything I started to have some fun with it and get to know how filters work, _(I haven't used these ones before)._ 
Even though I got stuck a couple of times trying to figure out how to use some of them, I easily solved these small setbacks thanks to the great support found in the [Gephi forums](https://forum.gephi.org/), where they quickly answered my newbie questions, thanks Gephi team!

As a source for the graph I used the [public EHEC GO annotations](https://s3-eu-west-1.amazonaws.com/pablo-tests/EHECAnnotationVersion2.xml) we did for the **[E. coli O104:H4 Genome Analysis Crowdsourcing](https://github.com/ehec-outbreak-crowdsourced/BGI-data-analysis/wiki)** we coordinated last summer and chose the **Molecular Function sub-ontology** for the visualization.

When I first loaded the gexf file in Gephi without applying any kind of filters this is what I got:

{% img /images/EHECMolFuncDraft.png %}

As you (maybe) can see, the size of GO term nodes is proportional to the number of proteins they annotate; still it pretty much looks just like a big hair-ball...

Then I applied the following set of filters:

{% img /images/EHECMolFuncFilters.jpg %}

in order to get the GO terms with at least 6 protein annotations plus the proteins which are annotating these terms _(their neighborhoods)_; and this is what it looked like (after applying a _Parallel Force Atlas_ layout algorithm):

{% img /images/EHECMolFuncPreliminary.png %}

I decided then to get rid of the protein labels, since they were way too many and not so useful to be seen; for that I used the option: "Hide nodes/edges labels if not in filtered graph".
After doing this and applying the black background preview setting, the visualization finally looked pretty decent:

{% img /images/EHECMolFuncFinal.png %}

Please go [here](http://bio4j.com/imgs/EHEC_MolecularFunction_SeaDragon/) to check the version exported with [Sea Dragon plugin](https://gephi.org/plugins/seadragon/) where you can zoom and move around!

Well, if you like the result _(or you don't but you want to play with this and get a better viz!)_, I just uploaded a new version of [Bio4j GO Tools](http://gotools.bio4j.com:8080/Bio4jTestServer/Bio4jGoToolsWeb.html) viewer where you can download the corresponding .gexf file for your GO annotations XML file. 
Just press the button highlighted in the screenshot and enter the URL for your GO annotations XML file:

{% img /images/gexfButtonBio4jGOToolsScreenshot.jpg %}

You can use the public EHEC GO annotation results URL I used as a sample for this post: 

- `https://s3-eu-west-1.amazonaws.com/pablo-tests/EHECAnnotationVersion2.xml`

So, that's all for now, please let me know if you play around with this and get some cool visualizations!

[**@pablopareja**](https://twitter.com/pablopareja)

## comments

- **Amrit** 
  Good to know it. Does it take expression data also. I have expression data with gene name and probe I’d only. Would you mind to suggest whether it work or not for this kind of data. Thank u so much for your help.

  - **Pablo Pareja** 
    Hi Amrit,
    There is no restriction for the input data, the only thing is that the tool expects Uniprot accessions as parameters. You would just need to map your gene names to Uniprot accessions using a ID mapping tool such as that available at uniprot website:
    http://www.uniprot.org/
    (ID mapping tab)
    Cheers,
    Pablo