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

To install using a Gemfile, add this:

    gem "sixarm_ruby_fab", ">= 1.0.2", "< 2"

To install using the command line, run this:

    gem install sixarm_ruby_fab -v ">= 1.0.2, < 2"

To install using the command line with high security, run this:

    wget http://sixarm.com/sixarm.pem
    gem cert --add sixarm.pem && gem sources --add http://sixarm.com
    gem install sixarm_ruby_fab -v ">= 1.0.2, < 2" --trust-policy HighSecurity

To require the gem in your code:

    require "sixarm_ruby_fab"

<!--INSTALL-SHUT-->


## Examples

Create a fab:

    require "sixarm_ruby_fab"
    fab = Fab.new

Use it:

    fab.email_address #=> "foo@bar.com"
    fab.street_address #=> "123 Main Street"
