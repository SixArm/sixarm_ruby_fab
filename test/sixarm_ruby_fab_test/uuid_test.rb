# -*- coding: utf-8 -*-
require "sixarm_ruby_fab_test"

describe Fab do

  let(:fab){ Fab.new }

  describe "#uuid" do      

    before do
      @x = fab.uuid
    end

    it "is a string" do
      @x.must_be_kind_of String
    end

  end

  describe "#uuids" do      

    before do
      @x = fab.uuids
    end

    it "is a list of String items" do
      @x.each{|x| x.must_be_kind_of String}
    end

  end

end
