require 'time'
require 'byebug'

class SimulationTime < Struct.new(:starting_time, :current_time)
  include Comparable

  def initialize *args
    super *args
    self[:current_time] = starting_time unless self[:current_time]
  end

  def tick
    self[:current_time] += 1
  end

  def <=>(input)
    self[:current_time] <=> Time.parse(input)
  end

  def get_current_time
    current_time.strftime("%I:%M")
  end

  def starting_time
    @starting_time ||= Time.parse(self[:starting_time])
  end
end
