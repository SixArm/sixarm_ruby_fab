# Ruby » <br> Fab gem for fabricated sample data for testing

* Doc: <http://sixarm.com/sixarm_ruby_fab/doc>
* Gem: <http://rubygems.org/gems/sixarm_ruby_fab>
* Repo: <http://github.com/sixarm/sixarm_ruby_fab>
* Email: Joel Parker Henderson, <joel@sixarm.com>

## Introduction

Fabricate sample data suitable for testing.

Requires the Forgery gem.

For docs go to <http://sixarm.com/sixarm_ruby_fab/doc>

Want to help? We're happy to get pull requests.


## Install quickstart

Install:

    gem install sixarm_ruby_fab

Bundler:

    gem "sixarm_ruby_fab", "~>1.0.1"

Require:

    require "sixarm_ruby_fab"


## Install with security (optional)

To enable high security for all our gems:

    wget http://sixarm.com/sixarm.pem
    gem cert --add sixarm.pem
    gem sources --add http://sixarm.com

To install with high security:

    gem install sixarm_ruby_fab --trust-policy HighSecurity


## Examples

Create a fab:

    require "sixarm_ruby_fab"
    fab = Fab.new

Use it:

    fab.email_address #=> "foo@bar.com"
    fab.street_address #=> "123 Main Street"


## Changes

* 2013-08-02 1.0.1 Add min & max to date, datetime, time.
* 2013-08-01 1.0.0 Publish.
