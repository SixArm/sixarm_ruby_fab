# -*- coding: utf-8 -*-
require "sixarm_ruby_fab_test"

describe Fab do

  let(:fab){ Fab.new }

  describe "#date" do    

    before do
      @x = fab.date
    end

    it "returns a date" do
      @x.must_be_kind_of Date
    end

  end

  describe "#date_min" do    

    before do
      @x = fab.date_min
    end

    it "returns a date" do
      @x.must_be_kind_of Date
    end

  end

  describe "#date_min=" do    

    before do
      @x = Date.today
    end

    it "sets & gets" do
      fab.date_min = @x
      fab.date_min.must_equal @x
    end

  end

  describe "#date_max" do    

    before do
      @x = fab.date_max
    end

    it "returns a date" do
      @x.must_be_kind_of Date
    end

  end

  describe "#date_max=" do    

    before do
      @x = Date.today
    end

    it "sets & gets" do
      fab.date_max = @x
      fab.date_max.must_equal @x
    end

  end

  describe "#start_date" do    

    before do
      @x = fab.start_date
    end

    it "returns a date" do
      @x.must_be_kind_of Date
    end

  end

  describe "#stop_date" do    

    before do
      @x = fab.stop_date
    end

    it "returns a date" do
      @x.must_be_kind_of Date
    end

  end

  describe "#start_date_and_stop_date" do    

    before do
      @start, @stop = @x = fab.start_date_and_stop_date
    end

    it "is an array" do
      @x.must_be_kind_of Array
    end
    
    it "contains a start date and stop date" do
      @start.must_be_kind_of Date
      @stop.must_be_kind_of Date
    end
    
    it "ensures start <= stop" do
      @start.must_be :<=, @stop
    end
    
  end

end
