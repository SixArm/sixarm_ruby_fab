class Fab

  # Fab a random URI.
  # Delegates to Forgery::Internet.uri.
  #
  # @returns [String] a URI
  #
  def uri 
    Forgery::Internet.uri
  end

end
