# -*- coding: utf-8 -*-
require 'minitest/autorun'
require 'simplecov'
SimpleCov.start

describe Fab do

  let(:fab){ Fab.new }

  describe "#time" do    

    before do
      @x = fab.time
    end

    it "is a time" do
      @x.must_be_kind_of Time
    end

  end

  describe "#start_time" do    

    before do
      @x = fab.start_time
    end

    it "returns a time" do
      @x.must_be_kind_of Time
    end
  end

  describe "#stop_time" do    

    before do
      @x = fab.stop_time
    end

    it "returns a time" do
      fab.stop_time.must_be_kind_of Time
    end

  end

  describe "#start_time_and_stop_time" do    

    before do
      @start, @stop = @x = fab.start_time_and_stop_time
    end

    it "is an array" do
      @x.must_be_kind_of Array
    end

    it "contains a start time and stop time" do
      @start.must_be_kind_of Time
      @stop.must_be_kind_of Time
    end

    it "ensures start <= stop" do
      @start.must_be :<=, @stop
    end

  end

end
