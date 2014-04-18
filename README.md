# Farset Labs Static Website

This is a static site for [Farset Labs][farsetlabs] based powered by [Jekyll][jekyll] and [Twitter Bootstrap][bootstrap].

TOTALLY taken with full attribution from [BUILDS][builds]

## Requirements

Uses [Jekyll][jekyll] which requires Ruby 1.9.3. To setup your ruby environment it is suggested that you use [RVM][rvm].

- Ruby 1.9.3
- bundler `$ gem install bundler`
- jekyll `$ gem install jekyll`

A Gemfile is included so you can run `$ bundle install` after you install bundler with `$ gem install bundler`.

## Adding/Changing Content

Content can be edited either using the direct GitHub editor or on a locally cloned repository/branch.

Great care must be taken when editing using the GitHub editor, as there is no preview capability. 

The preferred workflow for significant work is:
1. Fork the FarsetLabs Organisation repository to your own GitHub account
1. Clone that repository to your local machine
1. Make whatever changes to the content/appearance you like
1. Test the changes and site build using `jekyll serve -w` (See *Requirements*)
1. Push changes up to your own repository
1. Raise a Pull Request with the FarsetLabs Org admins, and the PR will be reviewed before pushing it to the live site.

Smaller corrections and content adjustments can be raised as [issues](https://github.com/FarsetLabs/farsetlabs.github.io/issues) against this repository. Anyone can raise issues but large issues may be rejected at the discression of the organisation admins.

## Guidance for Organisation Admins/Managers
* Don't mess with the appearance without doing a full jekyll walkthrough on a local repository FIRST
* If you are in any way not 100% sure you haven't broken anything else, leave your addition on a branch and ask someone else to have a look at it first. 
* In 'Most Cases', only the Directors and the Digital Infrastructure NEM should merge/pull into the trunk.

```yaml
---
layout: post
title:  "Full Title"
date:   2012-03-22 13:07:36
author: "Author Name"
categories: category
image_url: /assets/img/posts/category/filename/banner.jpg
tag: front
---
```

### Editing Sidebar Links

Sidebar links are included from `_includes/sidebar-links.md` it is just a markdown 
list which gets parsed when the jekyll site is compiled. To change the links just edit
this file.

[builds]: http://builds.cc
[farsetlabs]: http://farsetlabs.org.uk
[jekyll]: http://jekyllrb.com
[bootstrap]: http://getbootstrap.com/2.3.2
[rvm]: https://rvm.io/
