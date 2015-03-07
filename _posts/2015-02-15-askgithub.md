---
layout: post
title:  "Launching Ask GitHub!"
date:   2015-02-15
excerptimagealt: "ask github"
excerptimage: /pics/askgithub-search1.png
excerpt: Delighted to launch Ask GitHub to search latest GitHub public timeline, answer questions and provide insights. 
         Hosted on Heroku, technology stack includes languages Python &amp; Node.js , NoSQL databases MongoDB &amp; Neo4j , Flask web server, 
         Bootstrap front-end framework, Typeahead integration and scalable-vector-icons from Font Awesome.
keywords: "github, analytics, api, boostrap, typeahead, python, nodejs"
cheader: <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
         <script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/gist-embed/2.0/gist-embed.min.js"></script> 

tag:
- github
- analytics
- bootstrap
- typeahead
- mongodb
- Neo4j
---

![Ask GitHub](/pics/askgithub-search1.png)

Ask GitHub searches latest GitHub public timeline to answer questions and provide insights. Ask GitHub is hosted on Heroku and the
technology stack includes languages Python &amp; Node.js , NoSQL databases MongoDB &amp; Neo4j , Flask web server, 
Bootstrap front-end framework, Typeahead integration and scalable-vector-icons from Font Awesome. <a href="http://askgithub.com">Visit Ask GitHub</a>.

## Background
I developed an inital prototype for  [Third Annual GitHub Data Challenge](https://github.com/blog/1864-third-annual-github-data-challenge). 
Initial prototype <strong>got me thinking</strong> about the awesome potential and amazing data points GitHub public timeline provides. 
Further iterating on my initial prototype I developed Ask GitHub to search GitHub public timeline in the <strong>past 24 hours</strong> to answer questions 
and provide interesting insights. After working on this project for the past few months <i>(mostly during late evenings and weekends)</i> I am pleased to officially announce 
the launch of Ask GitHub! [Code driving Ask GitHub is available on GitHub](https://github.com/harishvc/githubanalytics) - let's collaborate!

## Data Gathering
Public GitHub timeline from [GitHub Archive](https://www.githubarchive.org/) is parsed hourly using [node.js streaming parser](https://github.com/mikeal/githubarchive). 
Currently event type ```PushEvent```, ```CreateEvent``` &amp; ```WatchEvent``` are captured. 
```PushEvent``` contains information about ```commits``` and ```authors```. ```CreateEvent``` contains new repositories. 
```WatchEvent``` contains information about popular repositories.    
<p class="text-success">Output log of data gathered hourly</p>
<code data-gist-id="9403c1ad2bb45fbdf0c1" data-gist-line="1-13" data-gist-hide-footer="true"></code>

## Data Storage
Data is stored in MongoDB hosted on [Compose](http://wwwcompose.io). Text index is set on field ```full_name``` and search results are sorted by dynamically generated document score.
Documents older than 24 hours are deleted. 
<p class="text-success">Search aggregation pipeline using text index score</p>
<code data-gist-id="9403c1ad2bb45fbdf0c1" data-gist-line="15-22" data-gist-hide-footer="true"></code>


## Web Framework
[Flask](http://flask.pocoo.org/) is a lightweight web application framework written in Python serving Ask GitHub using reponsive design tempates built using [Bootstrap](http://getbootstrap.com/). 
Bootstrap offers a highly customizable grid sytem that works across different devices, numerous built-in classes for styling and extensive list of components. 
<p class="text-success">Bootstrap badges &amp; accordion</p>
![repository information](/pics/askgithub-repository-information.png)


## User Experience
Twitter's Typeahead is integrated into the search box to provide list of pre-defined questions and matching repositories are dynamically generated to guide users.
Scalable-vector-icons from [Font Awesome](http://http://fontawesome.io/) are used in addition to text to share interesting data points. 
[FuzzyWuzzy](https://github.com/seatgeek/fuzzywuzzy) string comparision library is used to provide <i>suggestions</i> and <i>did you mean</i> queries.
<p class="text-success">Example 1: Questions?</p>
![pre-defined questions](/pics/askgithub-questions.png)
<p class="text-success">Example 2: Top new repositories</p>
![pre-defined questions](/pics/askgithub-top-new-repos.png)
<p class="text-success">Example 3: User commit frequency</p>
![pre-defined questions](/pics/askgithub-commit-frequency.png)
<p class="text-success">Example 4: Suggestion</p>
![pre-defined questions](/pics/askgithub-suggestion.png)

## Roadmap
Automate recommendation engine using [Neo4j](http://neo4j.com) and continue to keep interating. 

askgithub-commit-frequency.png
