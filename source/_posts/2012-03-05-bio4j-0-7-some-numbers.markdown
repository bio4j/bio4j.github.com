---
comments: false
author: Pablo Pareja
date: 2012-03-05 12:28:27
layout: post
slug: bio4j-0-7-some-numbers
title: Bio4j 0.7, some numbers
wordpress_id: 667
categories:
- Releases
tag:
- chart
- model
- nodes
- release
- statistics
---

Hi everyone!

There have already been a good few posts showing different uses and applications of Bio4j, but what about Bio4j data itself?
Today I'm going to show you some **basic statistics** about the different types of nodes and relationships Bio4j is made up of.
Just as a heads up, here are the **general numbers of Bio4j 0.7** :

- Number of Relationships: **530.642.683**
- Number of Nodes: **76.071.411**
- Relationship types: **139**
- Node types: **38**

Ok, but how are those relationships and nodes distributed among the different types?  In this chart you can see the **first 20 Relationship types** (click on the image below to check the interactive chart):

[{% img http://blog.bio4j.com/wp-content/uploads/2012/03/first20RelTypesChart-1024x797.png %}](http://bio4j.com/imgs/release07/relsBarChart.html)

Here, the same thing but for the **first 20 Node types** (click on the image below to check the interactive chart):

[{% img http://blog.bio4j.com/wp-content/uploads/2012/03/first20NodeTypesChart-1024x794.png %}](http://bio4j.com/imgs/release07/nodesBarChart.html)

You can also check these two files including the numbers from all existing types:

- [Node statistics](https://s3-eu-west-1.amazonaws.com/bio4j-public/releases/0.7/statistics/Bio4j07NodeStatistics.txt)
- [Relationship statiscis](https://s3-eu-west-1.amazonaws.com/bio4j-public/releases/0.7/statistics/Bio4j07RelStatistics.txt)

All this data was obtained with the program [**GetNodeAndRelsStatistics**](https://github.com/bio4j/Bio4jTools/blob/develop/src/com/era7/bioinfo/bio4j/tools/GetNodeAndRelsStatistics.java).

Have a good day!

[**@pablopareja**](http://twitter.com/pablopareja)

## comments

- **Patrick Durusau**
  Excellent!
  Question: When I checked at PubMed, I did not find Neo4j cited in any of the medical literature. I am not a medical professional but am interested in what might promote Bio4j in the medical research community?
  It is too good of a resource to be unnoticed.
  Patrick
  - **ppareja**
    Hi Patrick,
    I’m glad you liked the post.
    It’s true that Bio4j may not have caught the attention of many people yet who could definitely make a good use out of it. What are the reasons for that? Well, I think it could be a mixture of factors.
    Some people don’t like too much learning new technologies/strategies/workflows… and tend to stick to things they already know as long as possible – which is totally respectable and undestandable. Other people though, may simply not have found about it yet… It’s also possible that due to the lack of a well structured project documentation, potential users get lost in their way when trying to figure out what’s Bio4j about and/or miss the parts they could be interested in.
    I could keep on going with more possible reasons that are coming to my mind but still, couldn’t be really objective – it’s me who created this project  :D
    The point you bring up is actually one of the reasons why we value so much any sort of feedback for the project, (specially constructive ‘bad’ feedback that help us realize its weaknesses)
    Let me know if you come up with an idea to let more people know about Bio4j !
    Pablo
