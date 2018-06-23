# -*- coding: utf-8 -*-
require "sixarm_ruby_fab_test"

describe Fab do

  let(:fab){ Fab.new }

  describe "#content_type" do      

    before do
      @x = fab.content_type
    end

    it "is a string" do
      @x.must_be_kind_of String
    end

    it "has a slash" do
      @x.must_match /\//
    end

  end

  describe "#content_type_part" do      

    before do
      @x = fab.content_type_part
    end

    it "is a string" do
      @x.must_be_kind_of String
    end

    it "does not have a slash" do
      @x.wont_match /\//
    end
  end

end
