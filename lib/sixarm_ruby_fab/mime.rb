# -*- coding: utf-8 -*-

class Fab

  # Fab a random content type part e.g. "image/jpeg".
  #
  # Options:
  #
  #   * chars: a..z
  #   * size: rand(1..20) [per part]
  #
  # @returns [String] a content type
  #
  def content_type(options = {})
    "#{content_type_part(options)}/#{content_type_part(options)}"
  end

  # Fab a random content type part e.g. "image".
  #
  # Options:
  #
  #   * chars: a..z
  #   * size: rand(1..20)
  #
  # @returns [String] a content type part
  #
  def content_type_part(options = {})
    (options[:chars] || AZ).sample(options[:size] || rand(1..20)).join
  end

end
