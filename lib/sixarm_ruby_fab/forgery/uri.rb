# -*- coding: utf-8 -*-

require "forgery"

# Generates random Interet URI information.
class Forgery::Internet < Forgery

  def self.uri
    ext = ['com','net','org','edu','gov','mil','au','br','cn','in','it','mx','jp','com.uk','com.au','com.ca'].sample
    host = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','0','1','2','3','4','5','6','7','8','9'].sample(rand(5)+15).join 
    return "http://#{host}.#{ext}"
  end

end
