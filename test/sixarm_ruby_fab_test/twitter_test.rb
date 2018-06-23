# -*- coding: utf-8 -*-
require "sixarm_ruby_fab_test"

describe Fab do

  let(:fab){ Fab.new }

  describe "#twitter_screen_name" do

    before do
      @x = fab.twitter_screen_name
    end

    it "is a string" do
      @x.must_be_kind_of String
    end

    it "is a short string of characters a-z" do
      @x.must_match /\A[a-z]{2,15}\z/
    end

  end

  describe "#twitter_user_id" do

    before do
      @x = fab.twitter_user_id
    end

    it "is an integer" do
      @x.must_be_kind_of Integer
    end
    
    it "is a large number-- we choose 8 digits for our implmentation" do
      (1000000...100000000).must_include @x
    end

  end

  describe "#twitter_user_hash" do
    
    before do
      @hash = fab.twitter_user_hash
    end

    it "is a hash" do
      @hash.must_be_kind_of Hash
    end

    it "contains a user id" do
      (10000000...100000000).must_include @hash["id"]
    end

    it "contains a user id_str that is the id as a string" do
      @hash["id_str"].must_equal @hash["id"].to_s
    end

  end

  describe "#twitter_retweet_count" do
    
    before do
      @x = fab.twitter_retweet_count
    end

    it "is a count" do
      @x.must_be_kind_of Integer
    end

  end

  describe "#twitter_favorite_count" do

    before do
      @x = fab.twitter_favorite_count
    end

    it "is a count" do
      @x.must_be_kind_of Integer
    end

  end

  describe "#twitter_tweet_id" do

    before do
      @x = fab.twitter_tweet_id
    end

    it "is an id" do
      @x.must_be_kind_of Integer
    end

  end

end
