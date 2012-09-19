---
comments: false
author: Pablo Pareja
date: 2012-02-24 13:21:39
layout: post
slug: bio4j-rest-server-configures-itself-now-thanks-to-the-updated-cf-template
title: Bio4j REST Server configures itself now thanks to the updated CF template
wordpress_id: 642
categories:
- AWS
- Bio4j REST Server
tag:
- aws
- cloudformation
- server
---

Hi all,

I just wanted to write a very short post informing about the changes in the [**Bio4jBasicRestServerTemplate**](https://s3-eu-west-1.amazonaws.com/bio4j-public/Bio4jBasicRestServerTemplate.txt). 

> Template what!? 

If that's what you're thinking, please go [here](http://blog.ohnosequences.com/2011/12/neo4j-server-and-aws-become-good-friends/) to get an idea of what's this all about.

From now on, this CloudFormation template adapts the server configuration files:

- `neo4j-wrapper.conf`
- `neo4j.properties`

to the characteristics of the instance type the server is running in, so that it can make the best out of it.

> These configurations assume that the server is running alone in the machine.

For that I created these two new mappings in the template:

- `AWSInstanceType2WrapperConfFile`
- `AWSInstanceType2Neo4jPropertiesFile`

Default configuration values are available in the **bio4j-public S3 bucket**. For example in order to have access to the server configuration files of a `m1.xlarge` instance, just go to this url:

- [neo4j-wrapper.conf - m1.xlarge](https://s3-eu-west-1.amazonaws.com/bio4j-public/server/conf-files/m1.xlarge/neo4j-wrapper.conf)

same thing for the other file:

- [neo4j.properties - m1.xlarge](https://s3-eu-west-1.amazonaws.com/bio4j-public/server/conf-files/m1.xlarge/neo4j.properties)

If you want to check the conf files for any other instance type, you just have to change the **instance type name** in the urls linked above.

Have a good weekend!

**[@pablopareja](http://www.twitter.com/pablopareja)**
