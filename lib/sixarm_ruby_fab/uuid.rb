class Fab

  # Fab a random UUID.
  #
  # Options:
  #
  #   * none
  #
  # @returns [String] a random UUID sting
  #
  def uuid(options = {})
    SecureRandom.uuid
  end

  # Fab a list of random UUIDs.
  #
  # Options:
  #
  #   * size: 3
  #
  # @returns [Array[String]] a list of random UUIDs
  #
  def uuids(options = {})
    (options[:size] || 3).times.map{ uuid(options) }
  end

end
