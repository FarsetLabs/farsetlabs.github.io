---
title: Network Configuration
layout: default
---

DNS Record Sets
===============

Farset's DNS records are controlled via Amazon Route 53 and any changes must be authenticated by the Directors.

| Name                                   | Type  | Description            | Control                  | Value |
|----------------------------------------|-------|------------------------|--------------------------|---------------------------------------------------------------------|
| beta.farsetlabs.org.uk.                | A     | Beta Site              | Github                   | 204.232.175.78                                                      |
| discourse.farsetlabs.org.uk.           | A     | Discourse              | Member Controlled (DP)   | 5.9.41.29                                                           |
| discourse.farsetlabs.org.uk.           | MX    | Discourse Mail Server  | Member Controlled (DP)   | 10 services.farsetlabs.org.uk                                       |
| farsetlabs.org.uk.                     | A     | Main Website           | Github                   | 204.232.175.78                                                        |
| farsetlabs.org.uk.                     | MX    | Google Mail Record     | Gapps                    | 10 ASPMX.L.GOOGLE.COM 20 ALT1.ASPMX.L.GOOGLE.COM 20 ALT2.ASPMX.L.GOOGLE.COM 30 ASPMX2.GOOGLEMAIL.COM 40 ASPMX3.GOOGLEMAIL.COM                                                                                                                   |
| farsetlabs.org.uk.                     | NS    | AWS NS Record          | AWS                      | ns-793.awsdns-35.net. ns-227.awsdns-28.com. ns-2030.awsdns-61.co.uk. ns-1087.awsdns-07.org.                                                                                                                                                     |
| farsetlabs.org.uk.                     | SOA   | AWS SOA Record         | AWS                      | ns-793.awsdns-35.net. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400                                                                                                                                                                    |
| farsetlabs.org.uk.                     | SPF   | Domain Auth            | Gapps                    | Available on Request                                                |
| farsetlabs.org.uk.                     | TXT   | Domain Auth            | Mandrill                 | Available on Request                                                |
| google.\_domainkey.farsetlabs.org.uk.  | TXT   | Domain Auth            | Gapps                    | Available on Request                                                |
| mandrill.\_domainkey.farsetlabs.org.uk.| TXT   | Domain Auth            | Mandrill                 | Available on Request                                                |
| members.unit1.farsetlabs.org.uk.       | A     | Unit1 Member Traffic   | Farset Labs              | 89.185.154.123                                                      |
| preview.farsetlabs.org.uk.             | A     | Experiments            | Director Controlled (AB) | 31.3.227.196                                                     |
| seltzer.farsetlabs.org.uk.             | CNAME | Seltzer Member Mgmt    | Member Controlled (CM)   | seltzer.krismurray.co.uk
| services.farsetlabs.org.uk.            | A     |                        | Member Controlled (DP)   | 5.9.41.19                                                           |
| services.farsetlabs.org.uk.            | MX    | Services Mail Redir    | Member Controlled (DP)   | 10 services.farsetlabs.org.uk                                       |
| services.unit1.farsetlabs.org.uk.      | A     | Unit1 Services Traffic | Farset Labs              | 89.185.154.122                                                      |
| tumblr.farsetlabs.org.uk.              | CNAME | Tumblr Alias           | NA                       | domains.tumblr.com                                                  |
| unit1.farsetlabs.org.uk.               | A     | Unit1 Services Traffic | Farset Labs              | 89.185.154.122                                                      |
| voip.farsetlabs.org.uk.                | A     | Farset VOIP Server     | NA                       | ALIAS unit1.farsetlabs.org.uk. (zt602wjwntzfo)                      |
| wiki.farsetlabs.org.uk.                | A     | Farset Wiki            | Member Controlled (DP)   | 5.9.41.19                                                           |
| www.farsetlabs.org.uk.                 | A     | Farset Web Server      | NA                       | ALIAS farsetlabs.org.uk. (zt602wjwntzfo)                            |


Switches
========

Core Coworking Switch (Netgear GS748T)
-----------------------------

|Port|Assigned Use|VLAN|Notes|
|----|------------|----|-----|
|1|Core Router|*T|Trunk Port, LAG1 (LACP)|
|2|Core Router|*T|Trunk Port, LAG1 (LACP)|
|3|Event Space|*T|Trunk Port, LAG2 (LACP)|
|4|Event Space|*T|Trunk Port, LAG2 (LACP)|
|5|General Access Port|3U||
|6|General Access Port|3U||
|7|NAS (Synology Diskstation DS1815+)|3U|LAG9 (LACP)|
|8|NAS (Synology Diskstation DS1815+)|3U|LAG9 (LACP)|
|9|NAS (Synology Diskstation DS1815+)|3U|LAG9 (LACP)|
|10|NAS (Synology Diskstation DS1815+)|3U|LAG9 (LACP)|
|11|NAS (Synology Diskstation DS1511+)|3U|LAG10 (LACP)|
|12|NAS (Synology Diskstation DS1511+)|3U|LAG10 (LACP)|
|13|General Access Port|3U|SkyPi (Event Space info)|
|14|VM Server 5|7U,2T,3T,5T,6T,8T|Farset's VM Server|
|15|UniFi AP|2U,3T,5T,6T,7T|Coworking Space|
|16|General Access Port|3U||
|17|General Access Port|3U||
|18|General Access Port|3U||
|19|General Access Port|3U||
|20|General Access Port|3U||
|21|UniFi AP|2U,3T,5T,6T,7T|Project Space|
|22|General Access Port|3U||
|23|General Access Port|3U||
|24|General Access Port|3U||
|25|General Access Port|3U||
|26|General Access Port|3U||
|27|General Access Port|3U||
|28|General Access Port|3U||
|29|General Access Port|3U||
|30|General Access Port|3U||
|31|General Access Port|3U||
|32|General Access Port|3U||
|33|General Access Port|3U||
|34|General Access Port|3U||
|35|General Access Port|3U||
|36|General Access Port|3U||
|37|General Access Port|3U||
|38|General Access Port|3U||
|39|General Access Port|3U||
|40|General Access Port|3U||
|41|General Access Port|3U||
|42|VoIP Port|3U,5T|Reception Phone|
|43|Doorbot|7U,2T|Bolster's Pi Project|
|44|CCTV DVR|6U||
|45|Infrastructure Access Port|2U||
|46|General Access Port|3U||
|47|General Access Port|3U||
|48|UniFi AP|2U,3T,5T,6T,7T|Event Space|

Event Space Switch (Linksys SRW2024 v1.2)
---------------------------------

|Port|Assigned Use|VLAN|Notes|
|----|------------|----|-----|
|1|General Access Port|3U||
|2|General Access Port|3U||
|3|General Access Port|3U||
|4|General Access Port|3U||
|5|General Access Port|3U||
|6|General Access Port|3U||
|7|General Access Port|3U||
|8|General Access Port|3U||
|9|General Access Port|3U||
|10|General Access Port|3U||
|11|General Access Port|3U||
|12|General Access Port|3U||
|13|General Access Port|3U||
|14|General Access Port|3U||
|15|General Access Port|3U||
|16|General Access Port|3U||
|17|General Access Port|3U||
|18|General Access Port|3U||
|19|General Access Port|3U||
|20|General Access Port|3U||
|21|General Access Port|3U||
|22|General Access Port|3U||
|23|Core Switch Trunk|*T|Trunk Port, LAG1 (LACP)|
|24|Core Switch Trunk|*T|Trunk Port, LAG1 (LACP)|

Patch Panels
============

Panel 1
-------

|Ports|Location|
|-----|--------|
|01-10|Cowrk North/back wall|
|11-12|Reception wall|
|13-14|Lounge|
|15-16|Reception wall|
|17-21|Cowrk South/front wall|
|22-24|Event space|

Panel 2
-------

|Ports|Location|
|-----|--------|
|01-04|Workshop|

Panel 3 (Cat6 panel)
--------------------

|Ports|Location|
|-----|--------|
|01|Tibus line (legacy)|
|07-10|Coworking extra ports|
