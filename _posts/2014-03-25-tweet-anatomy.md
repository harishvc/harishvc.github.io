---
layout: post
title:  "Ellen's 3081 byte selfie tweet anatomy"
date:   2014-03-25 22:07:49
excerptimagealt: "twitter"
excerptimage: https://dev.twitter.com/sites/default/files/images_documentation/bird_blue_48.png
excerpt: Have you ever wondered about the metadata behind each tweet? Let's take a closer look at Ellen's 3081 byte selfie tweet that has been retweeted and favorited by millions. 
keywords: "twitter, twitter api, tweet anatomy"
tag: 
- twitter
- analytics
- api
- anatomy
---
At the heart of Twitter are short messages called tweets. Tweets can express your thoughts quickly and easily. 
Ellen's famous selfie tweet at the end of Oscars 2014 had 10 words (3081 bytes of metadata) one picture and one hashtag and has been retweeted and favorited by millions.
<blockquote class="twitter-tweet" lang="en"><p>If only Bradley&#39;s arm was longer. Best photo ever. <a href="https://twitter.com/search?q=%23oscars&amp;src=hash">#oscars</a> <a href="http://t.co/C9U5NOtGap">pic.twitter.com/C9U5NOtGap</a></p>&mdash; Ellen DeGeneres (@TheEllenShow) <a href="https://twitter.com/TheEllenShow/statuses/440322224407314432">March 3, 2014</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

## Insights from 3081 bytes
{% highlight js  %}
5. "source": "\u003Ca href=\"http:\/\/twitter.com\/download\/android\" rel=\"nofollow\"\u003ETwitter for Android\u003C\/a\u003E",
{% endhighlight %}
<i>The tweet originated from an Andriod device running the official Twitter app</i>
<br/>

{% highlight js  %}
16. "name": "Ellen DeGeneres",
17. "screen_name": "TheEllenShow",
18. "location": "California",
19. "description": "Comedian, talk show host and ice road trucker. My tweets are real, and they're spectacular.",
{% endhighlight %}
<i>Ellen's screen name, location and description</i>
<br/>

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
<i>#people following Ellen, #people Ellen is following, when Ellen joined Twitter? #favourite tweets, verified account? time zone and language preference</i>
<br/>
  
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
87.        ]
88.      }
89.  ],
{% endhighlight %}
<i>#retweets, #favorites for Ellen's selfie tweet, location and text of the hashtag in the tweet</i>
<br/>

{% highlight js  %}
109. "url": "http:\/\/t.co\/C9U5NOtGap",
110. "display_url": "pic.twitter.com\/C9U5NOtGap"
111. "expanded_url": "http:\/\/twitter.com\/TheEllenShow\/status\/440322224407314432\/photo\/1"
112. "type": "photo",
113. "sizes": {
114.          "medium": {
115.            "w": 600,
116.            "h": 338,
117.            "resize": "fit"
118.          },
{% endhighlight %}
<i>Image location and various sizes the image is available</i>
<br/>

{% highlight js  %}
138. "favorited": false,
139. "retweeted": false,
140. "possibly_sensitive": false,
141. "lang": "en"
{% endhighlight %}
<i>More information about the tweet. Was this selfie tweet a retweet? favorite? sensitive? and language</i>
<br/>

Interesting isn't it? Now it's your turn. What do you think?

