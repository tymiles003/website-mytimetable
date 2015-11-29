# MyTimetable website

[![Build Status](https://travis-ci.org/eveoh/website-mytimetable.svg?branch=master)](https://travis-ci.org/eveoh/website-mytimetable) [![devDependency Status](https://david-dm.org/eveoh/website-mytimetable/dev-status.svg)](https://david-dm.org/eveoh/website-mytimetable#info=devDependencies)

It's our MyTimetable website!

## Install global prerequisites
* Make sure Ruby has been installed.

```
~ ruby --version
ruby 2.2.1p85 (2015-02-26 revision 49769) [x86_64-darwin14]
```

* Update/install rubygems

```
~ gem update --system
```

* Install bundler

```
~ gem install bundler
```

* Install NodeJS (e.g. using Homebrew)

```
~ brew install node
```

## Install website prerequisites

In the project directory:

* Install/update Ruby gems

```
~ bundle install
```

* Install NodeJS packages

```
~ npm install
```

## View the site
```
~ nanoc view
```

The site is now available at http://localhost:3000/.

## Compile the site
```
~ bundle exec nanoc
```

When changes are not visible, empty the `/output` and `/tmp` folders.

## Autocompile changes
```
~ bundle exec guard
```

When changes are not visible, empty the `/output` and `/tmp` folders.

## Deploy to staging
```
~ nanoc deploy --target staging
```

## Deploy to production
```
~ nanoc deploy --target prod
```

