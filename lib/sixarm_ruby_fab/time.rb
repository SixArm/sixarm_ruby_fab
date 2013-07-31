class Fab

  # Fab a random time.
  #
  # Options:
  #
  #   * min: now - 1000 
  #   * max: now + 1000
  #
  # @returns [Time] a random time min..max
  #
  def time(options = {})
    rand((options[:min] || Time.now - 1000)..(options[:max] || Time.now + 1000))
  end

  # Fab a random start time.
  # Delegates to #time.
  #
  # @returns [Time] a random time min..max
  #
  def start_time(options = {})
    time(options)
  end

  # Fab a random stop time.
  # Delegates to #time.
  #
  # @returns [Time] a random time min..max
  #
  def stop_time(options = {})
    time(options)
  end

  # Fab a random start time and stop time.
  # The start is less than or equal to the stop.
  # Delegates to #start_time and #stop_time.
  #
  # @returns [Time,Time] a random [start time, stop time] from min..max
  #
  def start_time_and_stop_time(options = {})
    [start_time(options), stop_time(options)].sort
  end

end
