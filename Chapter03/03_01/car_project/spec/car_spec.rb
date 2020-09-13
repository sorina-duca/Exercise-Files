# frozen_string_literal: true

require 'car'

# before(:example) do
#   @car = Car.new
# end

let(:car) {Car.new}

describe 'Car' do
  describe 'attributes' do
    it 'allows reading and writing for :make' do
      car.make = 'Dacia'
      expect(car.make).to eq('Dacia')
    end

    it 'allows writing for :doors'
  end

  describe '.colors' do
    it 'returns an array of colors' do
      colors = %w[blue black red green]
      expect(Car.colors).to match_array(colors)
    end
  end

  describe '#full_name' do
    context 'when initialized with no arguments' do
      it 'returns a string with default values' do
        expect(car.full_name).to eq('2007 Volvo (unknown)')
      end
    end
  end
end
