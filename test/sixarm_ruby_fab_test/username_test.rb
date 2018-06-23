# -*- coding: utf-8 -*-
require "sixarm_ruby_fab_test"

describe Fab do

  let(:fab){ Fab.new }

  describe "#username" do
    
    describe "with defaults" do

      before do
        @x = fab.username
      end

      it "is a string" do
        @x.must_be_kind_of String
      end

      it "is a short string of lowercase letters" do
        @x.must_match /\A[a-z]{5,15}\z/
      end

    end

    describe "with chars" do

      before do
        @chars = ['a','b']
        @x = fab.username(chars: @chars)
      end

      it "uses the chars" do
        @x.must_match /\A[ab]+\z/
      end

    end

    describe "with size" do

      before do
        @size = 20
        @x = fab.username(size: @size)
      end

      it "uses the size" do
        @x.size.must_equal @size
      end

    end

  end

end

  
