class Fab

  # Fab a random password.
  #
  # Options:
  #
  #   * chars: a..z
  #   * size: rand(9..40)
  #
  # @returns [String] a random password
  #
  def password(options = {})
    (options[:chars] || AZ).sample(options[:size] || rand(9..40)).join
  end

end
