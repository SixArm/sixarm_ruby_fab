class Fab

  # Fab a boolean, either true or false.
  #
  # @return [boolean] either true or false.
  #
  def boolean
    [true, false].sample
  end

  # Fab a rating, such as 1 to 5 stars.
  #
  # Options:
  #
  #   * min: 1
  #   * max: 5
  #
  # @return [Fixnum] a random number
  #
  def rating(options = {})
    rand((options[:min] || 1)..(options[:max] || 5))
  end

end


