# -*- coding: utf-8 -*-
require "minitest/autorun"
require "simplecov"
SimpleCov.start
require "sixarm_ruby_fab"

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
  require "sixarm_ruby_fab_test/#{x}_test.rb"
}

