# -*- coding: utf-8 -*-
require "sixarm_ruby_fab_test"

describe Fab do

  let(:fab){ Fab.new }

  describe "#password" do      

    before do
      @x = fab.password
    end

    it "is a string" do
      @x.must_be_kind_of String
    end

    it "is gte nine characters" do
      @x.size.must_be :>=, 9
    end

  end

end
