# -*- coding: utf-8 -*-
require 'minitest/autorun'
require 'simplecov'
SimpleCov.start

describe Fab do

  let(:fab){ Fab.new }

  describe "#phone" do      

    before do
      @x = fab.phone
    end

    it "is a string" do
      @x.must_be_kind_of String
    end

  end

end
