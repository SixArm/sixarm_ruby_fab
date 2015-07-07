# -*- coding: utf-8 -*-
require "minitest/autorun"
require "simplecov"
SimpleCov.start

describe Fab do

  let(:fab){ Fab.new }

  describe "#street_address" do      

    before do
      @x = fab.street_address
    end

    it "is a string" do
      @x.must_be_kind_of String
    end

  end

  describe "#city" do      

    before do
      @x = fab.city
    end

    it "is a string" do
      @x.must_be_kind_of String
    end

  end

  describe "#usstate" do      

    before do
      @x = fab.usstate
    end

    it "is a string" do
      @x.must_be_kind_of String
    end

  end

  describe "#uszip" do      

    before do
      @x = fab.uszip
    end

    it "is a string" do
      @x.must_be_kind_of String
    end

  end

end
