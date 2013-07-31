# -*- coding: utf-8 -*-
require 'minitest/autorun'
require 'simplecov'
SimpleCov.start

describe Fab do

  let(:fab){ Fab.new }

  describe "#latitude" do      

    before do
      @x = fab.latitude
    end

    it "is a float" do
      @x.must_be_kind_of Float
    end

  end

  describe "#longitude" do      

    before do
      @x = fab.longitude
    end

    it "returns a float" do
      @x.must_be_kind_of Float
    end

  end

end
