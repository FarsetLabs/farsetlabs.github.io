---
title: Network Configuration
layout: default
---
# Network Configuration

## DNS Record Sets

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

