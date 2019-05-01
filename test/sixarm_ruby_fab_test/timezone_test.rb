# -*- coding: utf-8 -*-
require "sixarm_ruby_fab_test"

describe Fab do

  let(:fab){ Fab.new }

  describe "#timezone_database_name" do    

    it "is a valid name, which is formatted e.g. America/New_York" do
      fab.timezone_database_name.must_match(/^[A-Z]\w+\/[A-Z]\w+$/)
    end

  end

end
