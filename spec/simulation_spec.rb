require 'simulation'

describe Simulation do
  subject { described_class.new '9:00', { quitting_time: '5:00' } }

  describe 'start' do
    it 'prints the start message' do
      subject.should_receive(:puts).with('This is all just a simulation')
      subject.start
    end
  end

  describe 'fin' do
    it 'prints the finish message' do
      subject.should_receive(:puts).with('BLUE PILL')
      subject.fin
    end
  end

  describe 'is_over?' do
    context 'before you can leave the simulation' do
      before do
        allow(subject).to receive(:simulation_time).and_return('12:00')
      end

      it 'returns false' do
        expect(subject.is_over?).to be false
      end
    end
  end
end
