---
layout: post
title:  "Using Flask plugin &amp; MongoDB to add pagination of  search results"
date:   2015-04-15
excerptimagealt: "pagination of search results"
excerptimage: /pics/pagination-flask-1.png
excerpt: With a growing number of public GitHub events, search results had to be displayed in multiple pages. 
         Using flask plugin and minor  rewrite of MongoDB queries I implemented pagination!
cheader: <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
         <script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/gist-embed/2.0/gist-embed.min.js"></script> 

tag:
- github
- analytics
- mongodb
- python
- flask
---

With a growing number of public GitHub events, [Ask GitHub] (http://askgithub.com) search results had to be displayed in multiple pages to improve 
the user experience and provide relevant information. Using [flask-paginate](http://flask-paginate.readthedocs.org/en/latest/), pagination extension for flask and rewriting
MongoDB queries I implemented pagination! 

Below are steps and my notes. Feedback welcome! 

##Step 1: Install flask-paginate
<code data-gist-id="42d4caefd75e7dc1983f" data-gist-line="8" data-gist-hide-footer="true"></code>

##Step 2: Initialize
<code data-gist-id="42d4caefd75e7dc1983f" data-gist-line="12-22" data-gist-hide-footer="true"></code>

##Step 3: Render templates with pagination
<code data-gist-id="42d4caefd75e7dc1983f" data-gist-line="25-32" data-gist-hide-footer="true"></code>

##Step 4: Call pagination with options
<code data-gist-id="42d4caefd75e7dc1983f" data-gist-line="35-56" data-gist-hide-footer="true"></code>

##Step 5: Include pagination tags inside templates
<code data-gist-id="42d4caefd75e7dc1983f" data-gist-line="59-62" data-gist-hide-footer="true"></code>

##Step 6: CSS (optional)
<code data-gist-id="42d4caefd75e7dc1983f" data-gist-line="65-79" data-gist-hide-footer="true"></code>

##Step 7: MongoDB queries to handle pagination
<code data-gist-id="42d4caefd75e7dc1983f" data-gist-line="82-92" data-gist-hide-footer="true"></code>

##Example
![example](/pics/pagination-flask-2.png)

