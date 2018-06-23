# -*- coding: utf-8 -*-

class Fab

  # Fab a username.
  #
  # Options:
  #
  #  * chars: a..z
  #  * size: rand(10..30) [actual size may be less because we strip the string]
  #
  # @returns [String] a username
  #
  def username(options = {})
    (options[:chars] || AZ).sample(options[:size] || rand(5..15)).join
  end

end
