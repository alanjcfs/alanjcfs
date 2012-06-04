---
layout: post
title: "Emily Dickinson Twitter"
description: "How I made a program to tweet Emily Dickinson's poems"
category: coding
tags: [ruby, emily dickinson]
---
{% include JB/setup %}
I personally would give myself an accomplishment score of 65%.

I have made some progress toward creating a Twitter bot for Emily Dickinson. When I first thought about it, I didn't get started right away because I didn't know how. I had some ideas, but they seemed out of reach to me: I thought about using a web crawler that would go through Wikisource and grab the needed poems, but I couldn't understand how to do it; I thought about creating a single file that would contain her poems, and parsing it somehow, but it felt like too much work, and it was precisely what I was trying to avoid. I thought I needed a page that had all her poems in one spot. I thought about using a database, but I have no experience with it whatsoever and I wasn't ready to tackle it. 

I forgot about it for several months; I began to tweet from the account less frequently because it was annoying to have to log in to Hootsuite to schedule tweets ahead of time. They made it labarious and repetitive, needing to click on various buttons to set dates and times. Then the copy and pasting got too much for me. How was I going to save more time without abandoning the account?

Several things came together. I saw a video tutorial about screen-scraping using Nokogiri, a Ruby HTML/XML parser. The video tutorial discussed using it to find items on Walmart containing the word "Batman" and parsing the results to find their prices. It involved using Firebug to find class names that they had in common. It didn't yet click to me.

I found the Wikipedia page that seems to have a list that linked to all the official Emily Dickinson poems ever written.

I read about using wget, and I tried to read the man page, but it was too perplexing. I encountered Bastards Book of Ruby, which gave a bit of inspiration to me because it was being written by someone who was a journalist first and a programmer second. In it, there were several tutorials involving screen-scraping, discussing how to go through government websites, statistics that were published by companies, etc.

They were helpful in the way that Nokogiri's documentation was not; where the documentation was intended for people who needed a reference but already knew how to use it, Bastards Book worked because it demonstrated how to use Nokogiri for a specific need. 

I used Firebug to find out how the poems were marked--they turned out to use class="extiw". I had to keep playing with Nokogiri in the IRB (Interactive Ruby) interface to figure out how to get to extiw. I just needed to create an array of all the titles and links of the poems. Then for each page containing the poem, I found class="poem". I figured out how to get Nokogiri to do it for me before I coded up something to automate it. I still had problems because the list of poems turned out not to be accurate--some of them were missing an ending dash or were wrong, but I could fix some of them as I went along by writing another program to add a space and dash at the end. It was mildly difficult to do because I learned about encoding issues for the first time. The em dash used Unicode, but while Firefox could display it correctly, it couldn't be parsed. I needed to use Addressable URI to parse the URI and normalize it for access.

I wonder why Ruby was sometimes finicky. I discovered how to set a magic comment at the start of the file to ensure Ruby doesn't get confused and error out.

When I created the Interdiction app, it was set up to use my ajcfs account, I had trouble figuring out how to get it authorized by EmilyEDickinson. I used another gem, called t. I asked the maintainer of the Twitter gem and it turned out that they are adding the feature now--the Twitter gem was probably intended to be single-user. It still doesn't solve the problem as obviously I haven't figured out how to do third-party authorization in the first place. I still look forward to understanding three-legged authorization.

What remained to be done is to split the poem up. I have thought about splitting it by four lines, but the problem is that though the ballad meter is the most common form, Dickinson did vary her poetry quite a bit, sometimes not dividing her poems into stanza, but putting them all together, sometimes dividing into three or five lines. I also need to stay within 140 characters. Curiously, Nokogiri didn't preserve the number of line endings for the poems, so I couldn't divide using \n\n, for example. I ultimately hacked it by dividing for four and cutting it in half if it exceeded 140 characters.

I have worked on it a bit more despite saying to myself that I was finished. I wanted to refactor the code to be less brittle, to ensure that if I came back to it, I would still understand what was going on.
