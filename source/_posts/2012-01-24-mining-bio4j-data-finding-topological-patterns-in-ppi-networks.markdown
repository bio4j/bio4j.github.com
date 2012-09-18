---
comments: true
date: 2012-01-24 15:42:56
layout: post
slug: mining-bio4j-data-finding-topological-patterns-in-ppi-networks
title: 'Mining Bio4j data: finding topological patterns in PPI networks'
wordpress_id: 501
categories:
- Data mining
tag:
- algorithms
- chart
- cypher
- data-mining
- graph
- interactions
- networks
- paths
- ppi
- statistics
- topology
---

Hi everyone!

After writing [**this post**](http://blog.bio4j.com/2011/12/using-bio4j-neo4j-graph-algo-component-for-finding-protein-protein-interaction-paths/) on December, I've been thinking of doing something similar, yet different, using Neo4j Cypher query language.

That's where I came up with the idea of looking for **topological patterns** through a large **sub-set of the Protein-Protein interactions network** included in Bio4j; - rather than focusing in a few proteins selected a priori.

I decided to mine the data in order to find **circuits/simple cycles of length 3** where **at least one protein is from Swiss-Prot dataset**:

[![](http://blog.bio4j.com/wp-content/uploads/2012/01/PPICircuit.png)](http://blog.bio4j.com/wp-content/uploads/2012/01/PPICircuit.png)

I would like to point out that the **direction** here **is important** and these two cycles:



	
  * A --> B --> C --> A

	
  * A --> C --> B --> A


are not the same.

Ok, so once this has been said, let's see how the Cypher query looks like:

[sourcecode]
START d=node:dataset_name_index(dataset_name_index = "Swiss-Prot")
MATCH d <-[r:PROTEIN_DATASET]- p, 
circuit = (p) -[:PROTEIN_PROTEIN_INTERACTION]-> (p2) -[:PROTEIN_PROTEIN_INTERACTION]-> (p3) -[:PROTEIN_PROTEIN_INTERACTION]-> (p)
 return p.accession, p2.accession, p3.accession
[/sourcecode]

As you can see it's really simple and straightforward. In the first two lines we match the proteins from Swiss-Prot dataset for later retrieving the ones which form a 3-length cycle as described before.
Once the query has finished, you should be getting something like this:



> 
cypher> 
==> +---------------------------------------------------------+
p.accession | p2.accession | p3.accession | 
==> +---------------------------------------------------------+
Q08465 P35189 P3421
Q08465 P34218 P35189
Q8GXA4 Q8L7E5 Q9LE82
Q8GXA4 Q9FH18 Q8L7E5
....
==> +---------------------------------------------------------+
==> 6632 rows, 1019211 ms




As you can see the query took **about 17 minutes** to be completed **in a 100% fresh DB** - _there was no information cached at all yet_; with a [**m1.large** AWS machine](http://aws.amazon.com/ec2/instance-types/) - _this machine has **7.5 GB of RAM**_. 
Not bad, right !?

We have to beware of something though, this query returns cycles such as:



	
  * A --> B --> C --> A

	
  * B --> C --> A --> B


as different cycles when they are actually not.
That's why I developed a [**simple program**](https://github.com/bio4j/Bio4jTools/blob/develop/src/com/era7/bioinfo/bio4j/tools/RemoveRepetitionsFromPPICircuits.java) to remove these repetitions as well as for fetching some statistics information.
After running the program you get two files:



	
  1. **PPICircuitsLength3NoRepeats** file: _download it_ [_here_](https://s3-eu-west-1.amazonaws.com/bio4j-public/PPICircuitsBlogPost/PPICircuitsL3SwissProtNoRepeats.txt)

	
  2. **PPICircuitsProteinsFreq** file: _download it _[_here_](https://s3-eu-west-1.amazonaws.com/bio4j-public/PPICircuitsBlogPost/PPICircuitsL3SwissProtProteinsFreq.txt).



The **final circuits found** were reduced after performing the filtering to **2226 records.**

Finally, I also created a really simple chart including the absolute frequency of the first 20 proteins with more occurrences in the cycles that were found.

[![](http://blog.bio4j.com/wp-content/uploads/2012/01/proteinsFrequencyChart.png)](http://blog.bio4j.com/wp-content/uploads/2012/01/proteinsFrequencyChart.png)

Well, that's all for now.
Have a good day!

[**@pablopareja**](http://www.twitter.com/pablopareja)
