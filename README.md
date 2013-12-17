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

This website uses jekyll and all new News/Blog posts go under the _posts folder. The current
method of organizing the _posts folder is this: "category/YYYY-MM-DD-title.md" The only part 
which is required (by jekyll) is the YYYY-MM-DD part. The category part is optional and
should correspond to the category in the YAML header. A standard yaml header can be found
below:

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

Note: A ruby program (nicknamed `potion`) is in the works for maintaining the directory
structure, deleting posts, adding images to posts.  `potion` will be released seperately
and configured to the project with a `_potion.yml` file.

### Editing Sidebar Links

Sidebar links are included from `_includes/sidebar-links.md` it is just a markdown 
list which gets parsed when the jekyll site is compiled. To change the links just edit
this file.

[builds]: http://builds.cc
[jekyll]: http://jekyllrb.com
[bootstrap]: http://getbootstrap.com/2.3.2
[rvm]: https://rvm.io/
