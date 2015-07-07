# -*- coding: utf-8 -*-
require "minitest/autorun"
require "simplecov"
SimpleCov.start

describe Fab do

  let(:fab){ Fab.new }

  describe "#agent" do

    before do
      @x = fab.agent
    end

    it "returns a string" do
      @x.must_be_kind_of String
    end

    it "is in the list" do
      fab.agent_list.must_include @x
    end

  end

  describe "#agent_list" do

    before do
      @x = [:a, :b, :c]
    end

    it "gets and sets" do
      fab.agent_list = @x
      fab.agent_list.must_equal @x
    end

  end

end

