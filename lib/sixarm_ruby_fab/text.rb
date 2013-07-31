class Fab

  NAME_CHARS = "aabcdeeefghiijklmnoopqrrssttuuvwxyz".split(//)
  NOTE_CHARS = "aabcdeeefghiijklmnoopqrrssttuuvwxyz     ..,,;;-+'*".split(//)

  # Fab a random name.
  #
  # Options:
  #
  #  * chars: NAME_CHARS
  #  * size: rand(10..30) [actual size may be less because we strip the string]
  #
  # @returns [String] a random name
  #
  def name(options = {})
    (options[:chars] || NAME_CHARS).sample(options[:size] || rand(10..30)).join.strip
  end

  # Fab a random note.
  #
  # Options:
  #
  #  * chars: NOTE_CHARS
  #  * size: rand(1..200) [actual size may be less because we strip the string]
  #
  # @returns [String] a random name
  #
  def note(options = {})
    (options[:chars] || NOTE_CHARS).sample(options[:size] || rand(1..200)).join.strip
  end

  # Fab a random note.
  #
  # Options:
  #
  #  * chars: NOTE_CHARS
  #  * size: rand(20..200) [actual size may be less because we strip the string]
  #
  # @returns [String] a random description
  #
  def description(options = {})
    (options[:chars] || NOTE_CHARS).sample(options[:size] || rand(20..200)).join.strip
  end

  # Fab a random lorem ipsum string.
  #
  # Options:
  #
  #  * chars: NOTE_CHARS
  #  * size: rand(20..200) [actual size may be less because we strip the string]
  #
  # @returns [String] a random description
  #
  def lorem(options = {})
    (options[:chars] || NOTE_CHARS).sample(options[:size] || rand(20..200)).join.strip
  end

end
