# -*- coding: utf-8 -*-
require "sixarm_ruby_fab_test"

describe Fab do

  let(:fab){ Fab.new }

  describe "#given_name" do      

    before do
      @x = fab.given_name
    end

    it "is a string" do
      fab.given_name.must_be_kind_of String
    end

  end

  describe "#middle_name" do      

    before do
      @x = fab.middle_name
    end

    it "is a string" do
      @x.must_be_kind_of String
    end

  end

  describe "#family_name" do      

    before do
      @x = fab.family_name
    end

    it "is a string" do
      @x.must_be_kind_of String
    end

  end

end

