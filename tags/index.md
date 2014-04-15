---
layout: page
title: Tags
---
<!-- http://kalapun.com/blog/2014/01/27/liquid-tag-management-for-jekyll/ -->
<!-- http://enrmarc.github.io/blog/Jekyll-tagcloud/ -->

<h1 style="padding-top:15px">Tags</h1>

<ul class="mytags">
{% for tag in site.tags %}
    <li style="font-size: {{ tag | last | size | times: 100 | divided_by: site.tags.size | plus: 70  }}%">
        <a href="#{{ tag | first | slugize }}">
            {{ tag | first }}
        </a>
    </li>
{% endfor %}
</ul>

<div class="mytags">
{% for tag in site.tags %}
  {% capture tag_name %}{{ tag | first }}{% endcapture %}
  <a class="anchor" id="top" style="display: block; position: relative; top: -45px; visibility: hidden;" name="{{ tag_name | slugize }}"></a>
  <h2 id="#{{ tag_name | slugize }}">{{ tag_name }}</h2>
  {% for post in site.tags[tag_name] %}
  <article>
 <!-- <h3><a href="{{ root_url }}{{ post.url }}">{{post.title}}</a></h3> -->
<span>{{ post.date | date_to_string }}</span> &raquo; <a href="{{ post.url }}">{{ post.title }}</a>
  </article>
  {% endfor %}
{% endfor %}
</div>
