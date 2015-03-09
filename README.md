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


## License

You may choose any of these open source licenses:

  * Apache License
  * BSD License
  * CreativeCommons License, Non-commercial Share Alike
  * GNU General Public License Version 2 (GPL 2)
  * GNU Lesser General Public License (LGPL)
  * MIT License
  * Perl Artistic License
  * Ruby License

The software is provided "as is", without warranty of any kind, 
express or implied, including but not limited to the warranties of 
merchantability, fitness for a particular purpose and noninfringement. 

In no event shall the authors or copyright holders be liable for any 
claim, damages or other liability, whether in an action of contract, 
tort or otherwise, arising from, out of or in connection with the 
software or the use or other dealings in the software.

This license is for the included software that is created by SixArm;
some of the included software may have its own licenses, copyrights, 
authors, etc. and these do take precedence over the SixArm license.

Copyright (c) 2005-2015 Joel Parker Henderson
