# SixArm.com → Ruby → <br> Fab gem for fabricated sample data for testing

<!--header-open-->

[![Gem Version](https://badge.fury.io/rb/sixarm_ruby_fab.svg)](http://badge.fury.io/rb/sixarm_ruby_fab)
[![Build Status](https://travis-ci.org/SixArm/sixarm_ruby_fab.png)](https://travis-ci.org/SixArm/sixarm_ruby_fab)
[![Code Climate](https://api.codeclimate.com/v1/badges/0e443b17ddbe4045ceb9/maintanability)](https://codeclimate.com/github/SixArm/sixarm_ruby_fab/maintainability)

* Git: <https://github.com/SixArm/sixarm_ruby_fab>
* Doc: <http://sixarm.com/sixarm_ruby_fab/doc>
* Gem: <https://rubygems.org/gems/sixarm_ruby_fab>
* Contact: Joel Parker Henderson, <joel@sixarm.com>
* Project: [changes](CHANGES.md), [license](LICENSE.md), [contributing](CONTRIBUTING.md).

<!--header-shut-->

## Introduction

Fabricate sample data suitable for testing.

Requires the Forgery gem.

For docs go to <http://sixarm.com/sixarm_ruby_fab/doc>

Want to help? We're happy to get pull requests.


<!--install-open-->

## Install

### Gem

To install this gem in your shell or terminal:

    gem install sixarm_ruby_fab

### Gemfile

To add this gem to your Gemfile:

    gem 'sixarm_ruby_fab'

### Require

To require the gem in your code:

    require 'sixarm_ruby_fab'

<!--install-shut-->


## Examples

Create a fab:

    require "sixarm_ruby_fab"
    fab = Fab.new

Use it:

    fab.email_address #=> "foo@bar.com"
    fab.street_address #=> "123 Main Street"
