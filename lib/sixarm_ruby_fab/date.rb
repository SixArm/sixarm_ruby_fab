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
    rand((options[:min] || Date.today - 1000)..(options[:max] || Date.today + 1000))
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

