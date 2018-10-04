require 'simulation'
require 'lab_rat'
require 'simulation_time'

simulation_time = SimulationTime.new '9:00'
simulation = Simulation.new simulation_time, {quitting_time: '5:00'}
lab_rat = LabRat.new simulation_time, {add_cheese: '2:00', remove_chese: '4:00'}

simulation.start
while !simulation.is_over?
  # lab_rat.run
  simulation_time.tick
end
simulation.fin
