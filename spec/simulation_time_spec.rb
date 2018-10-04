require 'simulation_time'

describe SimulationTime do
  subject { described_class.new '9:00'}

  describe 'current_time' do
      it 'has a current time attribute' do
        expect(subject['current_time']).to eq Time.parse("9:00")
      end
  end

  describe 'tick' do
    it 'adds a time step to the current simulation time' do
      expect{ subject.tick }.to change{ subject['current_time'] }.by 1
    end
  end

  describe 'get_current_time' do
    it 'returns a formatted time object' do
      expect(subject.get_current_time).to eq '09:00'
    end
  end
end
