---
comments: true
date: 2011-05-30 12:49:41
layout: post
slug: bio4j-includes-refseq-data-now
title: Bio4j includes RefSeq data now !
wordpress_id: 66
tag:
- refseq
---

Hi all,

After some weeks of hard work I finally finished the importer for RefSeq data.
First of all, I should clarify some points about its licensing:



	
  * Data has been retrieved from the public [ftp site](ftp://ftp.ncbi.nih.gov/refseq/release/complete/) for RefSeq complete release. There is no extra/different data coming from other source.

	
  * Quoting NCBI site: _"NCBI places no restrictions on the use or distribution of the GenBank data. However, some submitters may claim patent, copyright, or other intellectual property rights in all or a portion of the data they have submitted."_




Once this has been said I will go into more details of how it's been done.

**Genome elements' sequences**
Sequences are not stored on Bio4j DB but uploaded as separate files to [S3](http://aws.amazon.com/s3/) (Amazon Simple Storage Service) instead. Why doing it this way? For several reasons:



	
  * Having all sequences stored in the DB would take more than a decent amount of space

	
  * Most queries to the DB wouldn't be done in terms of the sequence content

	
  * Relevant data included in RefSeq in terms of performing queries would be information about genes, rnas, genome elements, positions of all these elements, etc (rather than the sequence itself).

	
  * Sequences are stored in txt files whose filename is the unique version string for the specific genome element, (e.g. NC_012932.txt) That way they can easily be retrieved whenever it's needed. _Plus, S3 service provides a way of extracting a range of bytes from a file without downloading the whole content, so there's no need of downloading the complete sequence in the case where you already know the range of the sequence you are interested in_.



In some cases, no sequence can be uploaded for a genome element. These are the cases where instead of a final sequence, a list of terms as join(x...x)complement(x...x(contig(joing(...)) is provided (I never thought I'd find hundreds of lines with these terms where a sequence was supposed to be...).

**Genome elements' data**

Regarding elements, the following are included (this are stored in Bio4j, not S3):



	
  * m RNA

	
  * Misc RNA

	
  * Nc RNA

	
  * r RNA

	
  * t RNA

	
  * rm RNA

	
  * CDS

	
  * gene



Data stored for all these elements includes their positions and note attribute (whenever it's found). I have to say that we decided not to extract more information from the gbff files since it can easily be accessed navigating through Bio4j by means of the connection Uniprot entry <--> RefSeq genome element. Plus, information included in Uniprot releases is much more reliable than that found in RefSeq files.




