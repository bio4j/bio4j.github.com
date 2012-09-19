---
comments: false
author: Pablo Pareja
date: 2011-11-23 16:53:43
layout: post
slug: bio4j-thanksgiving-treats
title: Bio4j Thanksgiving treats!
wordpress_id: 207
tag:
- aws
- ebs
- features
- ncbi
- reactome
- taxonomy
- wiki
---

Hi all!

Thanksgiving is almost here and we got just in time a lot of special treats for you:

## New github organization

All bio4j related repositories are now under the organization [bio4j](https://github.com/bio4j) in github. 

## New wiki(s)

The old wiki hosted at wiki.bio4j.com has been moved to the corresponding [Bio4j repository wiki](https://github.com/bio4j/Bio4j/wiki). 
More information has been added as well as structuring the previous data. Besides that, new wikis are being created for each bio4j related tools repositories. 

## NCBI taxonomy

We're happy to announce the official incorporation of [NCBI taxonomy](http://www.ncbi.nlm.nih.gov/Taxonomy/) data into Bio4j DB, as well as an index for retrieving NCBI taxons from gene identifiers (GI); so there's no need anymore to parse that huge [gi_taxid_nucl NCBI table](ftp://ftp.ncbi.nih.gov/pub/taxonomy/) in order to achieve that. There're no changes made to Uniprot taxonomy but you can now navigate to the equivalent NCBI taxon using the relationship [NCBITaxonRel](http://www.bio4j.com/docs/bio4jmodel/apidocs/com/era7/bioinfo/bio4jmodel/relationships/ncbi/NCBITaxonRel.html).

## Reactome terms

We've included Reactome terms references included in Uniprot files, so from now on you can retrieve both all terms associated to a specific protein as well as all proteins associated to an specific term.

## New EBS snapshot for this release

For those using [AWS](http://aws.amazon.com) (or willing to...) there's a new public EBS snapshot containing the last version of Bio4j DB.
The snapshot details are the following:

- Snapshot id: `snap-aa5cd3c2`
- Snapshot region: EU West (Ireland)
- Snapshot size: 100 GB

Bio4j DB is under the folder `bio4jdb`.
In order to use it, just create a [Bio4jManager](http://www.bio4j.com/docs/bio4jmodel/apidocs/com/era7/bioinfo/bio4jmodel/util/Bio4jManager.html) instance and start navigating the graph!

## UP 2011 Bio4j presentation

[{% img http://d34uahzum2tefy.cloudfront.net/UP2011_1_LOGOv2.png UP Cloud Computing Conference 2011 %}](http://up-con.com/)

We're really pleased to announce our presence in this year's UP 2011 Cloud Computing Conference. The presentation will be held on day 4 Thursday, December 8 2011. Check the agenda for the conference [here](http://up-con.com/agenda).



Enjoy!

and happy Thanksgiving!  ;)

[**@pablopareja**](http://twitter.com/pablopareja)



