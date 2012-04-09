---
layout: post
title: "Returning to Jekyll"
description: "Describing the process of moving to Jekyll 0.2"
category: coding
tags: [jekyll, bootstrap, setup]
---
{% include JB/setup %}

This post is intended to signal my return to using Jekyll+Bootstrap, not that I
have ever left. I have mostly been sending replies to OhLife everyday,
along with being busy at work. When I come home, I usually want to read stuff,
not learn or wrestle with the formatting.

## Figuring Jekyll Out

I have had to create a new Jekyll clone because it didn't seem like I could
upgrade. I'm sure there is a way, but I don't yet know how. When I first 
cloned Jekyll, it was at version 0.0.1, which at the time was not yet 
versioned, but considered stable. Now, it is at 0.2.1.

What seems to have changed (and I should have subscribed to the mailing
list, but I don't remember if it was there at the time) is that they
allow me to run `rake post title="title of new post"` and it will generate
a new post with the requisit "Front Matter" and put it in
 the `_posts` folder. I would still need (as far
as I am aware) to do the work of organization, but that is largely
behind the scene. Jekyll will know what to do no matter how many folders
deep you put the text documents in.

## Version 0.2.1

Obviously, the behind-the-scene changes have been bigger than 
front-of-the-scene, which was extensive. They've gotten rid of 
many default themes that the original release had, instead using only
Twitter and allowing the other themes to be installed with the push 
of a button. 

So they say.

I guess it will be version 1.0 before I see the final outcome. I suspect
I will be doing a lot of work moving my site through the changes,
some compatible and some not. I might as well create several different
repositories. The primary pages and posts I want to keep, I should
still be able to migrate throughout the major and minor releases, for
they are tied to Jekyll itself, and not Bootstrap.

It seems that Disqus code is included, but I wonder how it works as it is
not mine. Don't I need to sign up for my own Disqus? Does that mean
that if I upload it, the comments will show up in someone else's account?