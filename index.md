_Bio4j accepted as a mentoring org for Google Summer of Code 2014!! check the [blog post](/blog/2014/02/bio4j-accepted-for-google-summer-of-code-2014)_

Bio4j is a high-**performance** **cloud**-enabled **graph**-based **open** source **bioinformatics data** platform, integrating the data available in the most representative open data sources around protein information. It integrates the data available in 

- [UniProtKB](http://www.uniprot.org/help/uniprotkb) ([SwissProt](http://web.expasy.org/docs/swiss-prot_guideline.html) + [Trembl](https://www.ebi.ac.uk/uniprot/TrEMBLstats))
- [Gene Ontology](http://www.geneontology.org/) (GO)
- [UniRef](http://www.uniprot.org/help/uniref) (50, 90, 100)
- [RefSeq](http://www.ncbi.nlm.nih.gov/refseq/)
- [NCBI taxonomy](http://www.ncbi.nlm.nih.gov/taxonomy)
- [Expasy Enzyme](http://enzyme.expasy.org/)

Bio4j provides a completely new and powerful **framework for protein related information querying and management**. 
Since it relies on a high-performance graph engine, data is stored in a way that semantically represents its own structure. 
On the contrary, traditional relational databases must flatten the data they represent into tables, creating _artificial_ ids in order to connect the different tuples; which can in some cases eventually lead to domain models that have almost nothing to do with the actual structure of data.

This set of slides from [FOSDEM 2014](https://fosdem.org/2014/schedule/event/graphdevroom_bio4j_2/) should give an up-to-date overview of the project:

- **[Bio4j: bigger, faster, leaner - FOSDEM GraphDevRoom 2014](http://ohnosequences.com/slides/fosdem-2014/bio4j-bigger-faster-leaner)**

### scalability

* First of all, Bio4j has an [**Abstract Domain Model**](https://github.com/bio4j/bio4j), which allows you to use it without binding to a particular backend implementation.

* Next, it has an intermediate [**Blueprints layer**](https://github.com/bio4j/blueprints), which allows us to make a default implementation of the abstract interface using [Tinkerpop Blueprints API](https://github.com/tinkerpop/blueprints/wiki) and at the same time stay independent from the choice of database technology.

* And finally, there are technology specific versions:
  - [**Titan DB implementation**](https://github.com/bio4j/titandb)
  - [**Neo4j DB implementation**](https://github.com/bio4j/neo4jdb)

### modularity

Bio4j includes a few different data sources and you may not always be interested in having all of them together. That’s why the importing process is modular and customizable, allowing you to import just the data you are interested in.

Also, Bio4j has [Statika-based module system](https://github.com/bio4j/modules), which dramatically simplifies the process of building and deploying custom releases of Bio4j.

### performance

In Bio4j data is organized in a way semantically equivalent to what it represents thanks to the graph structure. That means that queries which would even be impossible to perform with a standard Relational DB, can be feasible with Bio4j obtaining good performance results.

### licensing

Bio4j is an **open source** platform released under [**AGPLv3**](http://www.gnu.org/licenses/agpl.html).
