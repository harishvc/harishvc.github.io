---
layout: post
title:  "Metadata insights from Ellen's selfie tweet"
date:   2014-03-25 22:07:49
excerptimagealt: "twitter"
excerptimage: https://dev.twitter.com/sites/default/files/images_documentation/bird_blue_48.png
excerpt: Metadata behind Ellen's history making 10 word selfie tweet is 3,081 bytes and offer interesting insights. Really?
keywords: "twitter api, tweet anatomy, analytics, ellen selfie"
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
{% highlight js  %}
5. "source": "\u003Ca href=\"http:\/\/twitter.com\/download\/android\" rel=\"nofollow\"\u003ETwitter for Android\u003C\/a\u003E",
{% endhighlight %}
<i>Where?</i> The tweet originated from an Andriod device running the official Twitter app
<br/>
<br/>
{% highlight js  %}
16. "name": "Ellen DeGeneres",
17. "screen_name": "TheEllenShow",
18. "location": "California",
19. "description": "Comedian, talk show host and ice road trucker. My tweets are real, and they're spectacular.",
{% endhighlight %}
<i>Who?</i> Ellen's screen name, location and description
<br/><br/>

{% highlight js  %}
42. "followers_count": 28117700,
43. "friends_count": 46469,
44. "listed_count": 99254,
45. "created_at": "Thu Aug 14 03:50:42 +0000 2008",
46. "favourites_count": 160,
47. "utc_offset": -25200,
48. "time_zone": "Pacific Time (US & Canada)",
49. "geo_enabled": false,
50. "verified": true,
51. "statuses_count": 8609,
52. "lang": "en",
{% endhighlight %}
<i>Tell me more about Ellen?</i> #people following Ellen, #people Ellen is following, when Ellen joined Twitter? #favourite tweets, verified account? time zone and language preference
<br/><br/>
  
{% highlight js  %}
78. "retweet_count": 3414678,
79. "favorite_count": 1974419,
80. "entities": {
81. "hashtags": [
82.      {
83.        "text": "oscars",
84.        "indices": [
85.          51,
86.          58
{% endhighlight %}
<i>How influencial is Ellen's selfie tweet?</i> #retweets & #favorites 
<br/><i>Direct engagment?</i> location and text of hashtag
<br/><br/>

{% highlight js  %}
109. "url": "http:\/\/t.co\/C9U5NOtGap",
110. "display_url": "pic.twitter.com\/C9U5NOtGap"
111. "expanded_url": "http:\/\/twitter.com\/TheEllenShow\/status\/440322224407314432\/photo\/1"
112. "type": "photo",
113. "sizes": {
114.            "medium": {
115.            "w": 600,
116.            "h": 338,
117.            "resize": "fit"
{% endhighlight %}
<i>Is there any media?</i> Media type, location and dimension
<br/><br/>

{% highlight js  %}
138. "favorited": false,
139. "retweeted": false,
140. "possibly_sensitive": false,
141. "lang": "en"
{% endhighlight %}
<i>Tweet type?</i> retweet, favorite, sensitive and language</i>
<br/><br/>

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


