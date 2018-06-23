# -*- coding: utf-8 -*-
require "sixarm_ruby_fab_test"

describe Fab do

  let(:fab){ Fab.new }

  describe "#uri" do      

    before do
      @x = fab.uri
    end

    it "is a string" do
      @x.must_be_kind_of String
    end

  end

end

