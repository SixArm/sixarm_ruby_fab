# -*- coding: utf-8 -*-

class Fab

  # Fab a random id.
  #
  # Options:
  #
  #   * min: 1
  #   * max: 30000
  #
  # @returns [Integer] a random id
  #
  def id(options = {})
    rand((options[:min] || 1)..(options[:max] || 30000))
  end

  # Fab a list of random ids.
  #
  # Options:
  #
  #   * size: 3
  #
  # @returns [Array[Integer]] a list of random ids
  #
  def ids(options = {})
    (options[:size] || 3).times.map{ id(options) }
  end

end
