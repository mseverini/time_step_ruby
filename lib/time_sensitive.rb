require 'simulation_time'

class TimeSensitive
  def initialize(simulation_time=nil, relevant_times={})
    @simulation_time = simulation_time
    @relevant_times = relevant_times
  end

  def simulation_time
    @simulation_time
  end

  def output_format(input)
    "#{@simulation_time&.get_current_time}: #{input}"
  end

  def puts(input)
    super output_format(input)
  end

  def method_missing(m, *args, &block)
    raise ArgumentError.new("No method #{m} for TimeSensitive class") unless @relevant_times[m.to_sym]
    @relevant_times[m.to_sym]
  end
end
