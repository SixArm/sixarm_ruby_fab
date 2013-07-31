class Fab

  # Fab a random latitude.
  # Delegate to Forgery::Geo.latitude.
  #
  # @returns [Float] a random latitude
  #
  def latitude
    Forgery::Geo.latitude
  end

  # Fab a random longitude.
  # Delegate to Forgery::Geo.longitude.
  #
  # @returns [Float] a random longitude
  #
  def longitude
    Forgery::Geo.longitude
  end

end
