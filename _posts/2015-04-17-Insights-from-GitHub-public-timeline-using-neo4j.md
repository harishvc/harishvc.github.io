---
layout: post
title:  "Insights from GitHub public timeline using Neo4j"
date:   2015-04-17
excerptimagealt: "neo4j relationship of repository"
excerptimage: /pics/neo4j-1.png
excerpt: Insights from GitHub public timeline using Neo4j that won the 2015 Neo4j Winter Challenge in 
         the "Creative Graph Search and Insights" category!
cheader: <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
         <script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/gist-embed/2.0/gist-embed.min.js"></script> 

tag:
- github
- analytics
- neo4j
- python
- nodejs
- graphenedb
---

Last month I created my first [GraphGist](http://gist.neo4j.org/?d9adad5c248385bea68c) to gather basic insights from GitHub public timeline and make simple recommendations using Neo4j. I latter submitted
the GraphGist for the [2015 Neo4j Data Challenge](http://neo4j.com/blog/winners-neo4j-graphgist-winter-challenge-2015/). I was surprised and thrilled to learn today that my GraphGist won in the category "Creative Graph Search and Insights".
I am super excited and can't wait to spend more time experimenting with Neo4j!

Below are initial sections from the GraphGist. You can visit [Ask GitHub] (http://askgithub.com) and see Neo4j in action 
by search for repositories and clicking on the button to "find similar repositories" (driven by [GrapheneDB](http://graphenedb.com))

##Data Source
Public GitHub timeline from GitHub Archive is parsed hourly using [node.js streaming parser] (https://github.com/harishvc/githubanalytics/blob/master/bin/FetchParseGitHubArchive.js). 
Currently event type `PushEvent`, `CreateEvent` & `WatchEvent` are captured. `PushEvent` contains information about `commits` and `authors`. `CreateEvent` contains 
new repositories. `WatchEvent` contains information about popular repositories. All the data is first stored in MongoDB. Data stored in MongoDB is then 
processed using [Neo4jSync.py] (https://github.com/harishvc/githubanalytics/blob/master/bin/Neo4jSync.py) to generate CSV files and imported into GrapheneDB. 
This data model will change - _Hello Neo4j!_

##Data Model
Currently there are three types of nodes - `Repository`, `Organization` &amp; `People`. `Repository` node contains information about repository and when node was created. `Organization` node contains information about the organization specific repository belongs to and when node was created. `People` node contains information about contributors (*email address of contributors*) and when the node was created. `IN_ORGANIZATION` relationship exists between `Respository` node and `Organization` node. `IS_ACTOR` relationship exists between `Respository` and `People` node. There can be more than one person contributing to a repository.


##Nodes &amp; Relationships model developed using YUML
![Data Model](http://yuml.me/8d623aea)

##Screenshot #1: Repositories for organization `openstack`
![Repositories for organization openstack](https://raw.githubusercontent.com/harishvc/githubanalytics/master/cypher-dataset-20March2015-211400/neo4j-graph-1.png)

##Screenshot #2: Repository `openstack/openstack`
![Repositories openstack/openstack](https://raw.githubusercontent.com/harishvc/githubanalytics/master/cypher-dataset-20March2015-211400/neo4j-graph-2.png)

##Insights
For insights #1 - #6 please visit [GraphGist](http://gist.neo4j.org/?d9adad5c248385bea68c)
