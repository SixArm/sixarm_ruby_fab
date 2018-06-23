# -*- coding: utf-8 -*-

class Fab

  # Fab a random date.
  #
  # Options:
  #
  #   * min: today - 1000 
  #   * max: today + 1000
  #
  # @returns [Date] a random date min..max
  #
  def date(options = {})
    rand((options[:min] || date_min)..(options[:max] || date_max))
  end

  # Get. The default is today - 1000.
  def date_min
    @date_min ||= Date.today - 1000
  end

  # Set.
  def date_min=x
    @date_min=x
  end

  # Get. The default is today + 1000.
  def date_max
    @date_max ||= Date.today + 1000
  end

  # Set.
  def date_max=x
    @date_max=x
  end
  
  # Fab a random start date.
  # Delegates to #date.
  #
  # @returns [Date] a random date min..max
  #
  def start_date(options = {})
    date(options)
  end

  # Fab a random stop date.
  # Delegates to #date.
  #
  # @returns [Date] a random date min..max
  #
  def stop_date(options = {})
    date(options)
  end

  # Fab a random start date and stop date.
  # The start is less than or equal to the stop.
  # Delegates to #start_date and #stop_date.
  #
  # @returns [Date,Date] a random [start date, stop date] from min..max
  #
  def start_date_and_stop_date(options = {})
    [start_date(options), stop_date(options)].sort
  end

end

