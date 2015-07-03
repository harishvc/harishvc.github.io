---
layout: post
title:  "Simple recommendation engine using Neo4j"
date:   2015-07-02
excerptimagealt: "nosql"
excerptimage: /pics/find-similar-repositories.png
excerpt:  Building a simple recommendation engine to recommend repositories based on contributors and organizations.
cheader: <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
         <script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/gist-embed/2.0/gist-embed.min.js"></script> 
tag:
- nosql
- github
- neo4j
---

Building a simple recommendation engine to recommend repositories based on contributors and organizations.

##Data Source
Public GitHub timeline from GitHub Archive is parsed hourly using [node.js streaming parser] (https://github.com/harishvc/githubanalytics/blob/master/bin/FetchParseGitHubArchive.js). 
Currently event type `PushEvent`, `CreateEvent` & `WatchEvent` are captured. `PushEvent` contains information about `commits` and `authors`. `CreateEvent` contains 
new repositories. `WatchEvent` contains information about popular repositories. All the data is first stored in MongoDB. Data stored in MongoDB is then 
processed using [Neo4jSync.py] (https://github.com/harishvc/githubanalytics/blob/master/bin/Neo4jSync.py) to generate CSV files and imported into Neo4j (hosted on GrapheneDB).

##Data Model
Currently there are three types of nodes - `Repository`, `Organization` &amp; `People`. `Repository` node contains information about repository and when node was created. `Organization` node contains information about the organization specific repository belongs to and when node was created. `People` node contains information about contributors (*email address of contributors*) and when the node was created. `IN_ORGANIZATION` relationship exists between `Respository` node and `Organization` node. `IS_ACTOR` relationship exists between `Respository` and `People` node. There can be more than one person contributing to a repository.


##Nodes &amp; Relationships model developed using YUML
![Data Model](http://yuml.me/8d623aea)


##Simple Recommendation Engine
Cypher to find similar based on contributors and organizations.
<code data-gist-id="2ae4de25bfa75e5bd680" data-gist-line="17-20" data-gist-hide-footer="true"></code>
For repository ```edx/edx-platform``` the cypher query finds all repositories that share the relation ```IS_ACTOR``` or ```IN_ORGANIZATION``` . The result is then sorted by number of connections in descending order.


Output
<code data-gist-id="2ae4de25bfa75e5bd680" data-gist-line="23-28" data-gist-hide-footer="true"></code>
Here repository ```edx/edx-platform``` and ```amir-qayyum-arbisoft/edx-platform``` share 25 contributors. Isn't it amazing!

##Future Work
Additional types of nodes can be created to improve the recommendations. The cypher query could be further optimized.
 
##Related Articles
* [GraphGist - Insights from GitHub public timeline using Neo4j](http://gist.neo4j.org/?d9adad5c248385bea68c)

