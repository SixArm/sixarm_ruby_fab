# -*- coding: utf-8 -*-
require "sixarm_ruby_fab_test"

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


  describe "#sym" do      

    before do
      @x = fab.sym
    end

    it "is a symbol" do
      @x.must_be_kind_of Symbol
    end

  end


  describe "#rating" do

    before do
      @x = fab.rating
    end

    it "is a number" do
      @x.must_be_kind_of Integer
    end

  end

end

