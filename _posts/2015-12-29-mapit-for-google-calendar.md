---
layout: post
title:  "MapIt for Google Calendar (A Chrome extension)"
date:   2015-12-29
excerptimagealt: "chrome"
excerptimage: /pics/mapit-install.png
excerpt: MapIt automatically wraps event location with a Google Map hyperlink and saves a click!. This blog post deep dives into developing a Chrome extension for Google Calendar.
tag:
- google
- chrome extension
---

<img src="/pics/mapit-install.png" align="left" hspace="25" vspace="15" />
Last month I challenged myself to improve my productivity - start reducing the number of clicks! Earlier today I launched MapIt, a Chrome extension that automatically wraps event location with a Google Map hyperlink and saves a click! 

# Interested?
* [Code on GitHub](https://github.com/harishvc/chrome-extension-examples/tree/master/mapit-google-calendar)

This blog post deep dives into developing a Chrome extension for Google Calendar.

# Problem
<img src="/pics/calendar-agenda-before.png" alt="calendar agenda before"/>  

You need to further expand (+ sign) for the map link - <strong>one additional click!</strong>

# Solution
<img src="/pics/calendar-agenda-after.png" alt="calendar agenda after"/>  

Automatically wrap event location with a Google Map hyperlink - <strong>save one click!</strong>

# How?
Replace the `innerText` in class `lv-location` with `innerHTML` link to Google Maps  

## Default code
<img src="/pics/calendar-code.png" alt="calendar code"/>   

## Modified code
<img src="/pics/calendar-code-after.png" alt="calendar code after"/> 

## Getting Started with developing Chrome extension
 * manifest.json provides all information about the extension  
   <script src="https://gist.github.com/harishvc/ff88829fe2bfb66c125f.js"></script>

 * line 3: extension name
 * line 4: extension version
 * line 5-10: content.js is a JavaScript file that runs in the context of `\*://calendar.google.com/calendar/render\*`. Here `*` handles http, https and query parameters.  
 * line 11-14: background.js has access to Chrome API  
 * line 15: permission to access tab and alarm    

Interested in further reading? Check out [Gabe Berke-Williams Chrome extension tutorial](https://robots.thoughtbot.com/how-to-make-a-chrome-extension)  

## 2. background.js 
<script src="https://gist.github.com/harishvc/65d147d3231ee724db84.js"></script>  

* line 2: Add listener to Chrome tabs
* line 3: Check if all the page content is loaded
* line 5: Send a message to `content.js` to `start`

## 3. content.js 
* JavaScript file that runs in the context of Google Calendar (view=Agenda)  
<script src="https://gist.github.com/harishvc/ed7d1affdb1d43277632.js"></script>  

* line 3: Wait for `start` message from `background.js` 
* line 11-24: Find all locations by class `lv-location` and add innerHTML
* line 17: URIencode special characters, handle () and replace %20 with space

## 4. Handle user interaction - Browser resize
<script src="https://gist.github.com/harishvc/539bbb15a74a5e14b675.js"></script>  

* line 8: Trigger `Start()` after browser resize


## 5. Handle user interaction  via tab
<script src="https://gist.github.com/harishvc/a1b3dad9be5c40cac484.js"></script>  

* line 5: Add listener on activated tab
* line 8: Check if active tab is Google Calendar (view=active)
* line 9: Send a message to `content.js` to `start`

## 6. Handle user interaction via events
<script src="https://gist.github.com/harishvc/eac4094c2d395d9863d7.js"></script>  

* line 3: Add alarm to trigger every 2 minutes
* line 17: Add listener on the alarm
* line 20: Send a `checking` message to `content.js`
* line 21-24: Keep track of the alarm count
* line 37: Check # of `lv-location` and `calendar-clicksaver-maplink`

## Observations:
* Thinking thru to programatically handle various user interactions is critical since the page is reloaded and modified code vaporized - <strong>background.js does not detect any updates</strong>  
* There is a <strong>periodic refresh</strong> that is not detected by `background.js` . So sending a message to `content.js` every 2 minutes to check (#6) using Chrome alarm works well. This solution is not efficient. Perspectives welcome.   
<img src="/pics/google-calendar-periodic-refresh.png" alt="calendar periodic refresh"/>


## Reference 
*  MapIt on Chrome web store (currently disabled)
<img src="/pics/mapit-chrome-store.png" alt="MapIt on Chrome web store"/> 






