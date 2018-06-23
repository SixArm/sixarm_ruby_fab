# -*- coding: utf-8 -*-
require "sixarm_ruby_fab_test"

describe Fab do

  let(:fab){ Fab.new }

  describe "#datetime" do    

    before do
      @x = fab.datetime
    end

    it "is a datetime" do
      @x.must_be_kind_of DateTime
    end
  end

  describe "#datetime_min" do    

    before do
      @x = fab.datetime_min
    end

    it "returns a datetime" do
      @x.must_be_kind_of DateTime
    end

  end

  describe "#datetime_min=" do    

    before do
      @x = DateTime.now
    end

    it "sets & gets" do
      fab.datetime_min = @x
      fab.datetime_min.must_equal @x
    end

  end

  describe "#datetime_max" do    

    before do
      @x = fab.datetime_max
    end

    it "returns a datetime" do
      @x.must_be_kind_of DateTime
    end

  end

  describe "#datetime_max=" do    

    before do
      @x = DateTime.now
    end

    it "sets & gets" do
      fab.datetime_max = @x
      fab.datetime_max.must_equal @x
    end

  end

  describe "#start_datetime" do    

    before do
      @x = fab.start_datetime
    end

    it "is a datetime" do
      @x.must_be_kind_of DateTime
    end

  end

  describe "#stop_datetime" do    

    before do
      @x = fab.stop_datetime
    end

    it "is a datetime" do
      @x.must_be_kind_of DateTime
    end

  end

  describe "#start_datetime_and_stop_datetime" do    

    before do
      @start, @stop = @x = fab.start_datetime_and_stop_datetime
    end

    it "is an array" do
      @x.must_be_kind_of Array
    end

    it "contains a start datetime and stop datetime" do
      @start.must_be_kind_of DateTime
      @stop.must_be_kind_of DateTime
    end

    it "ensures start <= stop" do
      @start.must_be :<=, @stop
    end

  end

end
