# -*- coding: utf-8 -*-

class Fab

  # Fab a random latitude.
  #
  # @returns [Float] a random latitude in the range -90.0 to +90.0
  #
  def latitude
    rand * 180.0 - 90.0
  end

  # Return a latitude's degrees component in the range -180 to +180 as an integer.
  def latitude_degrees
    rand(360)-180
  end

  # Return a latitude's minutes component in the range 0 to 60 as an integer.
  def latitude_minutes
    rand(60)
  end

  # Return a latitude's seconds component in the range 0 to 60 as an integer.
  def latitude_seconds
    rand(60)
  end

  # Return a latitude's direction component, either "N" (north) or "S" (south)
  def latitude_direction
    ["N","S"].sample
  end

  # Fab a random longitude.
  # Delegate to Forgery::Geo.longitude.
  #
  # @returns [Float] a random longitude in the range -180.0 to +180.0
  #
  def longitude
    rand * 360.0 - 180.0
  end

  # Return a longitude's degrees component in the range -180 to +180 as an integer.
  def longitude_degrees
    rand(360)-180
  end

  # Return a longitude's minutes component in the range 0 to 60 as an integer.
  def longitude_minutes
    rand(60)
  end

  # Return a longitude's seconds component in the range 0 to 60 as an integer.
  def longitude_seconds
    rand(60)
  end

  # Return a longitude's direction component, either "E" (east) or "W" (west)
  def longitude_direction
    ["E","W"].sample
  end
  
end
