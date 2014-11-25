# MyTimetable website
It's our MyTimetable website!

## Install global prerequisites
* Make sure Ruby has been installed

```
~ ruby --version
ruby 2.1.3p242 (2014-09-19 revision 47630) [x86_64-darwin14.0]
```

* Update/install rubygems

```
~ gem update --system
```

* Install bundler

```
~ gem install bundler
```

* Install Nanoc

```
~ gem install nanoc
````

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

