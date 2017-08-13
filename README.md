# SixArm.com → Ruby → <br> Fab gem for fabricated sample data for testing

* Doc: <http://sixarm.com/sixarm_ruby_fab/doc>
* Gem: <http://rubygems.org/gems/sixarm_ruby_fab>
* Repo: <http://github.com/sixarm/sixarm_ruby_fab>
<!--HEADER-SHUT-->

## Introduction

Fabricate sample data suitable for testing.

Requires the Forgery gem.

For docs go to <http://sixarm.com/sixarm_ruby_fab/doc>

Want to help? We're happy to get pull requests.


<!--INSTALL-OPEN-->

## Install

### Gem

Run this command in your shell or terminal:

    gem install sixarm_ruby_fab

Or add this to your Gemfile:

    gem 'sixarm_ruby_fab'

### Require

To require the gem in your code:

    require 'sixarm_ruby_fab'

<!--INSTALL-SHUT-->


## Examples

Create a fab:

    require "sixarm_ruby_fab"
    fab = Fab.new

Use it:

    fab.email_address #=> "foo@bar.com"
    fab.street_address #=> "123 Main Street"
