---
layout: post
title:  "Metadata insights from Ellen's selfie tweet"
date:   2014-03-25 22:07:49
excerptimagealt: "twitter"
faexcerptimage: "fa-twitter"
excerpt: Metadata behind Ellen's history making 10 word selfie tweet is 3,081 bytes. Let's take a closer look at the metadata.
keywords: "twitter api, tweet anatomy, analytics, ellen selfie"
cheader: <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
         <script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/gist-embed/2.0/gist-embed.min.js"></script> 
tag: 
- twitter 
- analytics
- api
- selfie
---
Ellen's history making 10 word selfie tweet at the end of Oscars 2014 has been retweeted and favorited by millions. Metadata for Ellen's selfie tweet returned as JSON from Twitter API had 3,081 bytes<sup>*</sup> and provides interesting insights.
<blockquote class="twitter-tweet" lang="en"><p>If only Bradley&#39;s arm was longer. Best photo ever. <a href="https://twitter.com/search?q=%23oscars&amp;src=hash">#oscars</a> <a href="http://t.co/C9U5NOtGap">pic.twitter.com/C9U5NOtGap</a></p>&mdash; Ellen DeGeneres (@TheEllenShow) <a href="https://twitter.com/TheEllenShow/statuses/440322224407314432">March 3, 2014</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

## Insights from 3,081 bytes<sup>*</sup>
<code data-gist-id="813724a045f043d23315" data-gist-line="6" data-gist-hide-footer="true"></code>
<i>Where?</i> The tweet originated from an Andriod device running the official Twitter app

<br/>
<code data-gist-id="813724a045f043d23315" data-gist-line="16-19" data-gist-hide-footer="true"></code>
<i>Who?</i> Ellen's screen name, location and description

<br/>
<code data-gist-id="813724a045f043d23315" data-gist-line="42-52" data-gist-hide-footer="true"></code>
<i>Tell me more about Ellen?</i> #people following Ellen, #people Ellen is following, when Ellen joined Twitter? #favourite tweets, verified account? time zone and language preference


<br/>
<code data-gist-id="813724a045f043d23315" data-gist-line="78-79" data-gist-hide-footer="true"></code>
<i>How influencial is Ellen's selfie tweet?</i> #retweets & #favorites 

<br/>
<code data-gist-id="813724a045f043d23315" data-gist-line="109-117" data-gist-hide-footer="true"></code>
<i>Is there any media?</i> Media type, location and dimension

<br/>
<code data-gist-id="813724a045f043d23315" data-gist-line="138-141" data-gist-hide-footer="true"></code>
<i>Tweet type?</i> retweet, favorite, sensitive and language</i>

<br/>
Interesting isn't it? If you are curious and would like to explore further below are related links. Now it's your turn. What do you think?

<sup>*</sup><i>Metadata size of each tweet is different. While writing this article the metadata size of Ellen's selfie was 3,081 bytes.</i> 

### Inspiration
Few months ago I participated in O'Reilly webcast presented by author [Matthew Russell](http://miningthesocialweb.com). Matthew provided interesting prespectives about metadata, data mining and Twitter. 
I had a few aha! moments during the webcast. The webcast got me thinking - motivated me to understand Tweet metadata and eventually develop [Twitter Stream Analytics]  
(https://github.com/harishvc/twitter-stream-analytics).  
 
### Related Links
1. [Twitter developers] (http://dev.twitter.com)      
2. [GetTweet - command line tool for fetching metadata] (https://github.com/harishvc/tools/tree/master/twitter)
3. [JSON metadata for Ellen's selfie tweet] (https://github.com/harishvc/tools/blob/master/twitter/440322224407314432.json)
4. [Formatted JSON metadata for Ellen's selfie tweet] (https://github.com/harishvc/tools/blob/master/twitter/440322224407314432-pretty.json)
5. [Matthew Russell's blog post "Why Is Twitter All the Rage?"] (http://miningthesocialweb.com/2013/10/09/why-is-twitter-all-the-rage/)
6. [Twitter Stream Analytics - node.js, mongoDB & d3 web app for generating real-time analytics from Twitter Streaming API] (https://github.com/harishvc/twitter-stream-analytics)
7. [How to use gist-embed to spice up code snippets on your blog] (https://github.com/blairvanderhoof/gist-embed)


