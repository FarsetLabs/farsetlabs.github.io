# Farset Labs Main Website

A [Jekyll][jekyll] and [Bootstrap][bootstrap] based informational website for
[Farset Labs][farsetlabs], a hackerspace and charity located in Belfast,
Northern Ireland.

## Quickstart

The site is built and published by GitHub Pages straight from `main`, using the
[`github-pages`][pages-versions] gem. `Gemfile.lock` and `.ruby-version` track
the versions Pages runs, so a local build matches the live one.

Install the [prerequisites][prerequisites] needed for Jekyll, including the Ruby
version in `.ruby-version`. We suggest [RVM][rvm] or [rbenv][rbenv] to manage
Ruby versions locally. You can check your version with:

```sh
ruby --version
```

Then, from the project directory, run:

```sh
gem install bundler
bundle install
bundle exec jekyll serve --safe --watch
```

Open http://localhost:4000 in a browser to view the site.

`--safe` matches GitHub Pages, which does not run custom plugins from
`_plugins/`.

### Building With Docker

[Docker][docker] provides reproducible environments to aid development. To work
with this site using Docker first ensure that Docker is installed on your
machine, and then run:

```sh
docker build -t farsetlabs-site .
docker run -p 4000:4000 -v "$(pwd)":/app farsetlabs-site
```

This will start a container, build the site and then serve it on port 4000.
Editing files on your machine will cause the container to rebuild the site and
make the changes available in the browser (wait for the confirmation message of
the build).

### Checks

Every pull request runs a `--safe` production build and the pre-commit hooks in
GitHub Actions (`.github/workflows/build.yml`). To run the same hooks locally
before you commit:

```sh
pip install pre-commit
pre-commit install
```

Dependabot proposes weekly updates for gems, GitHub Actions and the Docker base
image.

## Contributing

### Making your changes

All contributions to the website and content should be done through a branch.
You should follow the [Feature Branch Workflow][feature-branch-workflow] when
contributing.

We have one main branch, `main`, which represents the [live
website][farsetlabs]. Ongoing improvements to the site that are not live yet
live in feature branches, either on this repository or its forks.

Please branch from the latest `main` for your changes.

If you do not have access to our repository, please fork us on Github and submit
your branch through a pull request.

If you are not a developer, you should raise corrections and content
improvements as [issues].

### Submitting your changes

Once you have pushed your changes (either to our repo or your fork as a
contributor) you should open a [pull request]. Our web team will review it.
Please leave at least a brief description of what the changes are, and detail
any changes made to layout or the functionality of the website.

[bootstrap]: https://getbootstrap.com/
[farsetlabs]: https://www.farsetlabs.org.uk/
[docker]: https://www.docker.com/
[feature-branch-workflow]:
  https://www.atlassian.com/git/tutorials/comparing-workflows/feature-branch-workflow
[issues]: https://github.com/FarsetLabs/farsetlabs.github.io/issues
[jekyll]: https://jekyllrb.com/
[pages-versions]: https://pages.github.com/versions/
[pull request]: https://github.com/FarsetLabs/farsetlabs.github.io/pulls
[rvm]: https://rvm.io/
[rbenv]: https://github.com/rbenv/rbenv
[prerequisites]: https://jekyllrb.com/docs/installation/
