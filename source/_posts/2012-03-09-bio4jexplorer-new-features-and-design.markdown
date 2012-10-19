---
comments: false
author: Pablo Pareja
date: 2012-03-09 20:57:56
layout: post
slug: bio4jexplorer-new-features-and-design
title: Bio4jExplorer, new features and design!
wordpress_id: 713
categories:
- Bio4jExplorer
tag:
- aws
- development
- features
- model
- simpledb
- visualization
---

Hello everyone,

I'm happy to announce a new set of features for our tool Bio4jExplorer plus some changes in its design. I hope this may help both potential and current users to get a better understanding of Bio4j DB structure and contents.

[{% img /images/bio4jExplorerScreenshot-1024x712.png %}](http://gotools.bio4j.com:8080/Bio4jExplorerServer/Bio4jExplorer.html)

### Node & Relationship properties

You can now check with Bio4jExplorer the properties that has either a node or relationship in the table situated on the lower part of the interface. Five columns are included:

- **Name:** property name
- **Type:** property type (`String`, `int`, `float`, `String[]`, ...)
- **Indexed:** either the property is indexed or not (yes/no)
- **Index name**: name of the index associated to this property -if there's any 
**Index name**: type of the index associated to this property -if there's any 

{% img /images/bio4jExplorerPropertiesTable.png %}

### Node & Relationship Data source

You can also see now from which source a Node or Relationship was imported, _some examples would be Uniprot, Uniref, GO, RefSeq..._

{% img /images/bio4jExplorerDataSourceLabel.png %}

### Relationships Name property

With this new version you can directly check here the "internal" name of relationships without having to go to the respective javadoc documentation. 

{% img h/images/bio4jExplorerRelationshipsNameProperty.png %}

This is quite useful when you are writing your Cypher or Gremlin queries, just check it, copy it, and paste it in your query.  An example using the relationship shown in the picture would be this query included in the [Bio4j Cypher cheatsheet](https://github.com/bio4j/Bio4j/wiki/Bio4j-cypher-cheat-sheet):

**_Get proteins (accession and names) associated to an interpro motif (limited to 10 results)_**

```
> 
START i=node:interpro_id_index(interpro_id_index = "IPR023306")
 MATCH i <-[:**PROTEIN_INTERPRO**]- p
 return p.accession, p.fullname, p.name, p.short_name
 limit 10
```

The url for Bio4jExplorer is the same as before:

- [**http://gotools.bio4j.com:8080/Bio4jExplorerServer/Bio4jExplorer.html**](http://gotools.bio4j.com:8080/Bio4jExplorerServer/Bio4jExplorer.html)

In case you are interested on how the tool is implemented, please go to [the previous post about Bio4jExplorer](blog//2011/10/bio4jexplorer-familiarize-yourself-with-bio4j-nodes-and-relationships) where you can find information about the different code repos and more info.

**If you want to check the files including the hard-coded information regarding how nodes, relationships, and indexes are organized**, and which is the input for the program which creates the AWS SimpleDB domain, I just uploaded them to the bio4j-public S3 bucket. Please click on their names to download them:

- [**NodesBio4j.txt**](https://s3-eu-west-1.amazonaws.com/bio4j-public/simple-db-files/NodesBio4j.txt)
- [**NodeIndexesBio4j.txt**](https://s3-eu-west-1.amazonaws.com/bio4j-public/simple-db-files/NodeIndexesBio4j.txt)
- [**NodePropertiesBio4j.txt**](https://s3-eu-west-1.amazonaws.com/bio4j-public/simple-db-files/NodePropertiesBio4j.txt)
- [**RelationshipsBio4j.txt**](https://s3-eu-west-1.amazonaws.com/bio4j-public/simple-db-files/RelationshipsBio4j.txt)
- [**RelationshipPropertiesBio4j.txt**](https://s3-eu-west-1.amazonaws.com/bio4j-public/simple-db-files/RelationshipPropertiesBio4j.txt)
- [**RelationshipIndexesBio4j.txt**](https://s3-eu-west-1.amazonaws.com/bio4j-public/simple-db-files/RelationshipIndexesBio4j.txt)


I wish you all a great weekend!

I'll have mine at the beach enjoying our great springy weather with lots of sun down here in Andalucia ;)

[**@pablopareja**](http://www.twitter.com/pablopareja)
