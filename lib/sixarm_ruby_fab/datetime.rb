class Fab
  
  # Fab a random datetime.
  #
  # Options:
  #
  #   * min: now - 1000 
  #   * max: now + 1000
  #
  # @returns [DateTime] a random datetime min..max
  #
  def datetime(options = {})
    rand((options[:min] || DateTime.now - 1000)..(options[:max] || DateTime.now + 1000))
  end

  # Fab a random start datetime.
  # Delegates to #datetime.
  #
  # @returns [DateTime] a random datetime min..max
  #
  def start_datetime(options = {})
    datetime(options)
  end

  # Fab a random stop datetime.
  # Delegates to #datetime.
  #
  # @returns [DateTime] a random datetime min..max
  #
  def stop_datetime(options = {})
    datetime(options)
  end

  # Fab a random start datetime and stop datetime.
  # The start is less than or equal to the stop.
  # Delegates to #start_datetime and #stop_datetime.
  #
  # @returns [DateTime,DateTime] a random [start datetime, stop datetime] from min..max
  #
  def start_datetime_and_stop_datetime(options = {})
    [start_datetime(options), stop_datetime(options)].sort
  end

end
