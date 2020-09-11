# frozen_string_literal: true

require 'car'

describe 'Car' do
  describe 'attributes' do
    it 'allows reading and writing for :make' do
      car = Car.new
      car.make = 'Dacia'
      expect(car.make).to eq('Dacia')
    end

    it 'allows writing for :doors'
  end

  describe '.colors' do
    it 'returns an array of colors' do
      colors = ['blue', 'black', 'red', 'green']
      expect(Car.colors).to match_array(colors)
    end
  end

  describe '#full_name' do
    context 'when initialized with no arguments' do
      it 'returns a string with default values' do
        expect(Car.new.full_name).to eq('2007 Volvo (unknown)')
      end
    end
  end
end
