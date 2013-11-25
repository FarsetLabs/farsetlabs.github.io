---
layout: post
title:  "BUILDS Members attend UDE2013 and Win Zumba's Node Defender Competition"
date:   2013-11-24 13:07:36
author: "Chris Woodall"
categories: events
image_url: /assets/img/posts/events/2013-11-24-ude2013-node-defender/banner.jpg
tag: front
---

Winston Chen and [Huy Le](http://www.huyle.me/) attended the Ultimate Developer Event 2013 from November 20th to November 22nd and in the process won 1st and 2nd, respectively, for [Zumba Fitness's Node Defender][node-defender] game.

In this game you: Defend against waves of murderous server side code that wants nothing more than to kill and disconnect your node client. Node Defender was a websocket game by Zumba Fitness. Node Defender was created with two servers (Heroku dynos): a client server and a game server, MongoDB for the sessions and game results, and Redis. Browser client was created with Bootstrap 3.0, jade, Sass & Compass, RequireJS, Ace, KinecticJS, and howler.js.

Play [Zumba Fitness's Node Defender][play-node]. Look after the break to read about their strategies!

<!-- more -->



Backstory
=================

Winston and I arrived at the Ultimate Developer Event 2013 on November 21, 2013.Talking with the two people from Zumba Fitness, we learned about their Node Defender game, and we wanted to try to beat the top score and win first and second. We were to code Javascript instructions for Node Defender and try to get the top score.

Strategy
=================

We started writing code for Node Defender late on Thursday. Watching the game run with the default code, we tried to pinpoint the pattern of enemies and how long you would normally survive without any changes. Mainly using conditionals, for loops, and while loops, we tested different scenarios to see what type of attacks would be efficient for killing certain enemies, how much health each enemy had, the probabilities of getting a great damage hit on certain enemies, how much enemies would damage based on position, etc.

At first, I tested my conditional code with the Node Defender to see how well I would perform. Then, I would change or add something immediately afterwards to see if a change would be better. However, we realized that although the pattern in how the enemies reacted stayed the same, the organization and the type of enemies changed repeatedly in a pattern that I did not know. Sometimes, my code would work well, and other times, code wouldn't work well despite having very specific additions with good logic. The problem was that when I made a change, I ran the program only once or twice with that change. 

Since there was no penalty for repeated submissions, we decided that we should cut out any very specific code. We should leave a general, simple set of instructions that followed a rational and logical process that would effectively increase our chances for a high score. Endless submissions would work well because the random pattern would eventually show us whether certain code was good or not. We tried to have a general set of code that had a average mean of around 90,000 - 100,000. 

As a result, we focused on two main criteria for the best general solution to Node Defender. After analyzing the code on github for Node Defender and the instructions on how the game was scored, I put priority in killing waves as quick as possible to get the 10,000 point boost in the early rounds, and later on, defending myself as long as possible to get most rounds survived and some extra points. In the early rounds, killing waves was much easier, so my general code revolved around using collateral to destroy waves.

We cut out the fat of the code, created a general, well-working set of instructions for Node Defender, and simply ran it over and over again until we got high scores.

Scores
=================
winstonc - 147,356

huyle333 - 139,349

aaronjarecki - 138,923

Top Categories
=================
kills - 94 - aaronjarecki

damage - 434 - aaronjarecki

round - 76 - winstonc

waveClears - 8 - winstonc

Code
=== 

Code is available on [github](https://github.com/huyle333/zumbanodedefender)!

[node-defender]: https://github.com/zumba/node-defender-game
[play-node]: https://node-defender.herokuapp.com/game
