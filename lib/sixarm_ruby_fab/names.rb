# -*- coding: utf-8 -*-

class Fab

  # Fab a random given name.
  # Delegates to Forgery::Name.first_name
  #
  # @returns [String] a random given name
  #
  def given_name 
    Forgery::Name.first_name
  end

  # Fab a random middle name.
  # Delegates to Forgery::Name.first_name
  #
  # @returns [String] a random middle name
  #
  def middle_name 
    Forgery::Name.first_name
  end

  # Fab a random last name.
  # Delegates to Forgery::Name.last_name
  #
  # @returns [String] a random last name
  #
  def family_name 
    Forgery::Name.last_name
  end

end
