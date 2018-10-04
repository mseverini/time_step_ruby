require 'time_sensitive'

class Simulation < TimeSensitive
  def start
    puts 'This is all just a simulation'
  end

  def is_over?
    self.simulation_time > self.quitting_time
  end

  def fin
    puts 'BLUE PILL'
  end
end
