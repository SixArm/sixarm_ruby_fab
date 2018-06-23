# -*- coding: utf-8 -*-
require "sixarm_ruby_fab_test"

describe Fab do

  let(:fab){ Fab.new }

  describe "#language_code" do      

    before do
      @x = fab.language_code
    end

    it "is a string" do
      @x.must_be_kind_of String
    end

  end

  describe "#language_code_iso6391" do      

    before do
      @x = fab.language_code_iso6391
    end

    it "is a string" do
      @x.must_be_kind_of String
    end

    it "is in the list" do
      fab.language_code_iso6391_list.must_include @x
    end

  end

  describe "#language_code_iso6391_list" do      

    before do
      @x = [:a, :b, :c]
    end

    it "gets and sets" do
      fab.language_code_iso6391_list = @x
      fab.language_code_iso6391_list.must_equal @x
    end

  end

end
