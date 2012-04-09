---
layout: page
title: An Atom in a Sign
tagline: Don't neglect shekel, install Jekyll
---
{% include JB/setup %}

Welcome to my website, which is powered by Jekyll+Bootstrap from
[PlusJade](https://github.com/plusjade/jekyll-bootstrap).

## Posts
<ul class="posts">
  {% for post in site.posts %}
    <li><span>{{ post.date | date_to_string }}</span> &raquo; <a href="{{ BASE_PATH }}{{ post.url }}">{{ post.title }}</a></li>
  {% endfor %}
</ul>

