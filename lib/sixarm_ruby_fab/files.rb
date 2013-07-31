class Fab

  CHARS = ('a'..'z').to_a

  # Fab a path e.g. "/mydir1/mydir2/myfile.txt"
  #
  # @returns [String] a path 
  #
  def path(options = {})
    (Pathname.new("") + dirname(options) + basename(options)).to_s
  end

  # Fab a base name e.g. "myfile.txt"
  #
  # The base name has two parts:
  #
  #   * The "intension" e.g. "myfile"
  #   * The "extension" e.g. "txt"
  #
  # Options:
  #
  #   * chars: a..z
  #   * intension_length: [sent to #basename_intension as :length]
  #   * extension_length: [sent to #basename_extension as :length]
  # 
  # @returns [String] a base name
  #
  def basename(options = {})
    intention = basename_intension(options[:intension_length] ? options.merge(length: intension_length) : options)
    extention = basename_extension(options[:extension_length] ? options.merge(length: extension_length) : options)
    "#{basename_intension}.#{basename_extension}"
  end

  # Fab a file base name intension e.g. "myfile"
  #
  # Options:
  #
  #   * chars: a..z
  #   * length: rand(1..30)
  #
  # @returns [String] a base name intension
  #
  def basename_intension(options = {})
    (options[:chars] || AZ).sample(options[:size] || rand(1..30)).join
  end

  # Fab a file base name extension e.g. "txt"
  #
  # Options:
  #
  #   * chars: a..z
  #   * length: rand(1..5)
  #
  # @returns [String] a base name extension
  #
  def basename_extension(options = {})
    (options[:chars] || AZ).sample(options[:size] || rand(1..5)).join
  end

  # Fab a directory name e.g. "/mydir1/mydir2".
  # This calls #dirname_part +rand+ times.
  #
  # Options:
  # 
  #   * parts: rand(2..6) [how many parts to use]
  #   * chars: a..z [sent to #dirname_part]
  #   * length: 1..20 per part [sent to #dirname_part]
  #
  # @returns [String] a directory name
  #
  def dirname(options = {})
    pathname = Pathname.new("/")
    parts = options[:parts] || rand(2..6)
    parts.times.each{ pathname += dirname_part(options) }
    pathname.to_s
  end

  # Fab a directory path part e.g. "mydir".
  #
  # Options:
  #
  #  * chars: a..z
  #  * size: rand(1..20)
  #
  # @returns [String] a directory name part
  #
  def dirname_part(options = {})
    (options[:chars] || AZ).sample(options[:size] || rand(1..20)).join
  end

  # Fab a file extension.
  # Delegates to #basename_extension.
  #
  # @returns [String] a file extension e.g. "txt"
  #
  # TODO refactor this to streamline it
  #
  def file_extension(options = {})
    basename_extension(options)
  end

  # Fab a file path.
  # Delegates to #path.
  #
  # @returns [String] a file path e.g. "/mydir1/mydir2/myfile.txt"
  #
  # TODO refactor this to streamline it
  #
  def file_path(options = {})
    path(options)
  end

end
