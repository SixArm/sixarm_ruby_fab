class Fab

  # Fab a random street address.
  # Delegates to Forgery::Address.street_address.
  #
  # @returns [String] a random street address
  #
  def street_address
    Forgery::Address.street_address 
  end

  # Fab a random city string.
  # Delegates to Forgery::Address.city
  #
  # @returns [String] a random city
  #
  def city
    Forgery::Address.city 
  end

  # Fab a random US state abbreviation.
  # Delegates to  Forgery::Address.state_abbrev.
  #
  # @returns [String] a random US state abbreviation
  #
  def usstate 
    Forgery::Address.state_abbrev 
  end

  # Fab a random US zip code.
  # Delegates to  Forgery::Address.zip.
  #
  # @returns [String] a random US zip code
  #
  def uszip
    Forgery::Address.zip 
  end

end
