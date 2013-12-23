---
title: SpaceAPI Update
author: Andrew Bolster
layout: post
permalink: /spaceapi-update/
networkpub_postmessage:
  - 
networkpub_twitterhandle:
  - 
networkpub_twitterhash:
  - 
categories:
  - News
tags:
  - Access Control System
  - API
  - application
  - Auto
  - control
  - Draft
  - Farbot
  - Farset
  - Farset Labs SpaceAPI
  - Global Hackerspace Wall
  - JSON
  - notification system
  - projects
  - space
  - SpaceAPI
  - Titania
  - update
---
<div id="attachment_612" style="width: 410px" class="wp-caption alignright">
  <a href="http://i2.wp.com/farsetlabs.org.uk/blog/wp-content/uploads/2012/08/rrl-armadillo-rocket-ship-1008b.jpg"><img class="size-full wp-image-612" title="Space API" src="http://i2.wp.com/farsetlabs.org.uk/blog/wp-content/uploads/2012/08/rrl-armadillo-rocket-ship-1008b.jpg?fit=400%2C615" alt="Its Accessing Space, That's Punny!... Stop looking at me like that..." data-recalc-dims="1" /></a><p class="wp-caption-text">
    Accessing (the) Space
  </p>
</div>

The SpaceAPI was [born][1] in the Netherlands, and now lives on [github][2]. As the name would indicate, it provides an API abstraction layer to a physical (hacker)space.

It [exposes][3] information such as:  
* Open/Closed State  
* Location  
* Webcam Feeds  
* Contact Details  
* Sensor data

and more, from a simple [JSON][4] API.

The Farset Labs SpaceAPI server was built to solve the problem of multiple occupancy on the K8055 interface board, that had been the centre of the space&#8217;s [open/closed notification system][5].

This system, internally called on differentoccasions Farbot, or Titania, communicated over [Twitter][6] and [IRC](irc://irc.freenode.net:6667/farsetlabs) as well as exposing a SpaceAPI[ json responder](http://unit1.farsetlabs.org.uk/spaceapi/space/) for any  enabled services, the [Global Hackerspace Wall][7] being a perfect example

When it was decided to integrate the door control from the planned Access Control System into the same service, it quickly became clear that Titania was getting too big and too ugly, and it would be beneficial to decompose the problem into different application.

But these applications wouldn&#8217;t be able to talk to the [k8055][8] at the same time, so there would have to be ANOTHER application sitting on top of the board, providing a unified API access point.<!--more-->

## Implementation

The Farset Labs Space API is built on top of the [Flask][9] micro-framework, and using a customised version of the [authdigest][10] plugin to provide for persistent file-based authentication database.

[GitHub][11]

Not only have we produced the api service (running on [farbot.unit1.farsetlabs.org.uk][12]), but there is also a simple python [client][13] libary that can be used to play with the service from anywhere in the world. If you find any bugs, [please let us know][14]!

## Status

As it stands at the minute, the SpaceAPI **can** control access to the space, and **can** open the space for an authenticated user, so we **are** on track to roll out our intended &#8220;Out Of Hours Members Access&#8221;, but we have some other teathing problems to deal with, specifically settling on a Member CRM and Backend Authentication system, as well as rejigging the Network infrastructure, implementing secure wifi / VPN, and a load of other plans for members to take advantage of.

But the directors do this as a hobby, and as such can&#8217;t dedicate all their time to building these tools. The community needs to help. And if you have any skills in web dev, secure networking, graphic design, DBA, or associated, please get in touch with your ideas on how we can make the place even more awesome than it already is.

## Notes

*   [Interspace Federated Auth system][15] - Where we&#8217;re heading
*   Intro and spec of [SpaceApi][16]
*   Central [SpaceAPI Github][17] - Currently just specifications
*   TOG of course have a much more awesome [Twitch](http://www.youtube.com/watch?v=VhgZyPl6p44)!

 [1]: https://hackerspaces.nl/spaceapi/
 [2]: https://github.com/SpaceApi
 [3]: http://unit1.farsetlabs.org.uk/spaceapi/space/
 [4]: http://www.json.org/
 [5]: http://www.andrewbolster.info/blog/2012/04/k8055-usb-python-twitter-irc-space-indicator-as-a-os-service/
 [6]: http://twitter.com/farsetlabs
 [7]: http://hackerspaces.me
 [8]: http://www.velleman.eu/products/view/?country=be&lang=en&id=351346
 [9]: http://flask.pocoo.org/
 [10]: http://flask.pocoo.org/snippets/31/
 [11]: http://github.com/FarsetLabs/SpaceAPI
 [12]: http://unit1.farsetlabs.org.uk/spaceapi
 [13]: https://github.com/FarsetLabs/SpaceAPI/blob/master/SpaceAPIClient.py
 [14]: https://github.com/FarsetLabs/SpaceAPI/issues
 [15]: http://spacefed.net/wiki/index.php/SpaceFED
 [16]: http://hackerspaces.nl/spaceapi/
 [17]: https://github.com/SpaceApi/SpaceApi
