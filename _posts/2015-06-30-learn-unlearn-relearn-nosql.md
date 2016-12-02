---
layout: post
title:  "Learn, unlearn, and relearn - Hello NoSQL Databases!"
date:   2015-06-30
excerptimagealt: "nosql"
excerptimage: /pics/nosql.png
excerpt: By taking advantage of the strengths of different NoSQL data storage solutions, Ask GitHub can search thousands of documents, 
         build relations and offer visitors interesting perspectives.
cheader: <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
         <script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/gist-embed/2.0/gist-embed.min.js"></script> 
tag:
- nosql
- mongodb
- neo4j
---

I started working on [Ask GitHub](http://askgithub.com) few months ago to search latest GitHub public timeline to answer questions and identify basic insights. Along the way I wanted to <strong>learn</strong> and experiment with new technologies.

<img src="http://dev.assets.neo4j.com.s3.amazonaws.com/wp-content/uploads/polyglot-persistence-wanderu-neo4j-mongodb-300x200.jpg" align="left" hspace="25" vspace="13" />
## The Technical Challenge & Solution
During a 24 hour period the GitHub public timeline on average includes 500K commits, 25K new repositories, 30K starred repositories, 
100k contributors, adding up to more than 1GB of data. Storing and accessing this data is vital. What are my options?

After some initial trial with different databases my options were clear - <strong>MongoDB & Neo4j</strong>. 
Big data ready, cluster friendly, flexible schema, simplicity with storage, processing and managing large streams of non-transactional data 
and an active user community were the driving factors for implementing a NoSQL database.  By taking advantage of the strengths of different 
NoSQL data storage solutions provide [Ask GitHub](http://askgithub.com) searches thousands of documents, builds relations and offers visitors interesting perspectives.

[Ask GitHub](http://askgithub.com) is driven by [Compose.io](http://compose.io) (MongoDB hosting) & [GrapheneDB](http://graphenedb.com) (Neo4j hosting)


## Shift in Mindset
Learning to code for a NoSQL databases requires a shift in mindshift - <strong>unlearn</strong> the traditional relational databases driven 
by several tables, keys and join  and <strong>relearn</strong> about storing data as documents and writing aggregation operations to process the data for MongoDB, 
creating nodes and building relations between nodes for Neo4j. <i>It took me a few days to unlearn and relearn.</i> 


## MongoDB
Aggregate operation to find trending repositories based on stargazers. Code in Python.
<code data-gist-id="2ae4de25bfa75e5bd680" data-gist-line="2-9" data-gist-hide-footer="true"></code>
* ```match``` for ```type``` ```WatchEvent```  
* Result is grouped by ```full_name``` and counted as ```stars```  
* Result is sorted by ```stars``` in decending order  
* Result is then limited to 10  

<i>Do you see the simplicity and power of the aggregation operation?</i>


## Neo4j
Cypher to count repositories that have a relation with an organization. Code in Python.
<code data-gist-id="2ae4de25bfa75e5bd680" data-gist-line="12-13" data-gist-hide-footer="true"></code>


Here the cypher matches nodes of type ```Repository``` that have a relation with nodes of type ```Organization``` and counts them.

<i>Do you see the simplicity and power of cypher?</i>

 
## Related Articles
* [Introduction to NoSQL by Martin Fowler](https://www.youtube.com/watch?v=qI_g07C_Q5I)
