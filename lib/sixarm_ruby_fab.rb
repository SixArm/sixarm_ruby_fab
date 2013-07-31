# -*- coding: utf-8 -*-
=begin rdoc
Please see README
=end

require 'pathname'
require 'securerandom'
require 'forgery'  # gem
require 'sixarm_ruby_fab/forgery/geo'
require 'sixarm_ruby_fab/forgery/uri'

class Fab
  AZ = ('a'..'z').to_a
end

[
  'agent',
  'basic',
  'company',
  'date', 
  'datetime',
  'email',
  'files',
  'geo',
  'id',
  'internet',
  'locale',
  'mime',
  'names',
  'password',
  'phone',
  'postal',
  'text',
  'time',
  'twitter',
  'username',
  'uuid'
].each{|x|
  require "sixarm_ruby_fab/#{x}.rb"
}
