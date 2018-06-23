# -*- coding: utf-8 -*-
require "sixarm_ruby_fab_test"

describe Fab do

  let(:fab){ Fab.new }

  describe "#id" do      

    before do
      @x = fab.id
    end

    it "is an integer" do
      @x.must_be_kind_of Integer
    end

  end

  describe "#ids" do      

    before do
      @x = fab.ids
    end

    it "is a list of integer items" do
      @x.each{|x| x.must_be_kind_of Integer}
    end

  end

end
