# -*- coding: utf-8 -*-
require 'minitest/autorun'
require 'simplecov'
SimpleCov.start

describe Fab do

  let(:fab){ Fab.new }

  describe "#path" do      
    
    before do
      @x = fab.path
    end

    it "is a string" do
      @x.must_be_kind_of String
    end

  end

  describe "#basename" do      

    before do
      @x = fab.basename
    end

    it "is a string" do
      @x.must_be_kind_of String
    end

  end

  describe "#basename_intension" do      

    before do
      @x = fab.basename_intension
    end

    it "is a string" do
      @x.must_be_kind_of String
    end

  end

  describe "#basename_extension" do      

    before do
      @x = fab.basename_extension
    end

    it "is a string" do
      @x.must_be_kind_of String
    end

  end

  describe "#dirname" do      

    before do
      @x = fab.dirname
    end

    it "is a string" do
      @x.must_be_kind_of String
    end

  end

  describe "#dirname_part" do      

    before do
      @x = fab.dirname_part
    end

    it "is a string" do
      @x.must_be_kind_of String
    end

  end

  describe "#file_extension" do      

    before do
      @x = fab.file_extension
    end

    it "is a string" do
      @x.must_be_kind_of String
    end

  end

  describe "#file_path" do      

    before do
      @x = fab.file_path
    end

    it "is a string" do
      @x.must_be_kind_of String
    end

  end

end
