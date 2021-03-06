# -*- coding: utf-8 -*-
require "sixarm_ruby_fab_test"

describe Fab do

  let(:fab){ Fab.new }

  describe "#name" do      

    before do
      @x = fab.name
    end

    it "is a string" do
      @x.must_be_kind_of String
    end

  end

  describe "#note" do      

    before do
      @x = fab.note
    end

    it "is a string" do
      @x.must_be_kind_of String
    end

  end

  describe "#title" do      

    before do
      @x = fab.title
    end

    it "is a string" do
      @x.must_be_kind_of String
    end

  end

  describe "#description" do      

    before do
      @x = fab.description
    end

    it "is a string" do
      @x.must_be_kind_of String
    end

  end

  describe "#lorem" do      

    before do
      @x = fab.lorem
    end

    it "is a string" do
      @x.must_be_kind_of String
    end

  end

end
