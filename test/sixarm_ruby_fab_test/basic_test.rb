# -*- coding: utf-8 -*-
require 'minitest/autorun'
require 'simplecov'
SimpleCov.start

describe Fab do

  let(:fab){ Fab.new }

  describe "#boolean" do      

    before do
      @x = fab.boolean
    end

    it "is true or false" do
      [true, false].must_include @x
    end

  end

  describe "#rating" do

    before do
      @x = fab.rating
    end

    it "is a number" do
      @x.must_be_kind_of Fixnum
    end

  end

end

