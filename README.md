paani
========
[![Build Status](https://travis-ci.org/cganoo/paani.svg?branch=master)](https://travis-ci.org/cganoo/paani)

A toy cmdline Ruby app 

## How to use this?

### Satisfy Dependencies

Following are essential:

* [Git](http://git-scm.com/downloads)
* [Ruby](https://www.ruby-lang.org/en/documentation/installation/)
* [Bundler](http://bundler.io/)
* [MySQL](https://www.mysql.com/)

### Get the source from Github

1. `git clone https://github.com/cganoo/paani.git`
2. `cd paani/`
3. `bundle install`

### Prepare your data

1. We will work with the provided MySQL dump.
2. Note: It is easy to use sqllite or other databases with this dump, but currently only MySQL is being supported in this app.
3. If you are using a mac and have installed mysql through brew, then adding the following aliases will make your life easier: `alias mysql.start='/usr/local/Cellar/mysql/<version>/support-files/mysql.server start'` and `alias mysql.stop='/usr/local/Cellar/mysql/<version>/support-files/mysql.server stop'`
4. Its also nice to use a GUI tool to view our data. My favorite on a mac is [Querious](http://www.araelium.com/querious/)
5. Once you are setup with your MySQL toolchain, start the MySQL server and import the MySQL dump into the `test` database
6. Run a few SQL queries against the 2 tables (`factor_weights` and `water_samples`) to see if the data matches what you expect from the dump.

### Explore available commands

1. `bundle exec bin/paani help`
2. You can also get more info on each command by running `bundle exec bin/paani help <cmd_name>`
3. Execute individual commands e.g. `bundle exec bin/paani to_hash 2`

### Run Unit Tests
1. `rspec spec/`
2. Tests have been integrated with [SimpleCov](https://github.com/colszowka/simplecov)
3. Coverage report will be generated at <b>./coverage/index.html</b>

### Explore available docs
1. `yard server` will generate documentation for the project using [Yard](http://yardoc.org/)
2. Brows to `localhost:8088` in yoru browser to view this documentation

### Highlights

The aim of this toy project is to learn more about Ruby. Hence I chose to not turn this into a Ruby on Rails (RoR) project.

However we still need some sort of user-interaction layer for this app (cmdline, GUI etc) and a db-interaction layer to talk with our database (and hopefully abstract away thread-safety, connection pooling etc). With thse goals in mind, the follwoing 2 libraries were chosen:

* <b>[GLI](https://github.com/davetron5000/gli)</b>: Scaffolding to easily provide cmdline interaction for this app
* <b>[Sequel](https://github.com/jeremyevans/sequel)</b>: Chosen as an easy-to-use ORM layer for this app

### License

paani is licensed under the MIT license. It is primarily intended for fun and instructive purposes.
Use this at your own risk.

## Author

Chaitanya Ganoo
www.linkedin.com/in/cganoo
