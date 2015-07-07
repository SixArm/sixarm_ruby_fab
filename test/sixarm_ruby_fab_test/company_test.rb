# -*- coding: utf-8 -*-
require "minitest/autorun"
require "simplecov"
SimpleCov.start

describe Fab do

  let(:fab){ Fab.new }

  describe "#company_name" do      

    before do
      @x = fab.company_name
    end

    it "returns a string" do
      @x.must_be_kind_of String
    end

  end

  describe "#job_title" do

    before do
      @x = fab.job_title
    end

    it "returns a string" do
      @x.must_be_kind_of String
    end

  end

end
