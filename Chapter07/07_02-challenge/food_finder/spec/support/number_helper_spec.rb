# frozen_string_literal: true

describe 'NumberHelper' do
  include NumberHelper

  describe '#number_to_currency' do
    context 'using default values' do
      it 'correctly formats an integer' do
        expect(number_to_currency(2000)).to eq('$2,000.00')
      end

      it 'correctly formats a float' do
        expect(number_to_currency(2000.9598)).to eq('$2,000.95')
      end

      it 'correctly formats a string' do
        expect(number_to_currency('2000')).to eq('$2,000.00')
      end

      it 'uses delimiters for very large numbers' do
        expect(number_to_currency(2000000)).to eq('$2,000,000.00')
      end

      it 'does not have delimiters for small numbers' do
        expect(number_to_currency(30)).to eq('$30.00')
      end
    end

    context 'using custom options' do
      it 'allows changing the :unit' do
        expect(number_to_currency(30, unit:'RON')).to eq('RON30.00')
      end

      it 'allows changing the :precision' do
        expect(number_to_currency(30, precision:1)).to eq('$30.0')
      end

      it 'omits the separator if :precision is 0' do
        expect(number_to_currency(30, precision:0)).to eq('$30')
      end

      it 'allows changing the :delimiter' do
        expect(number_to_currency(3000, delimiter:'.')).to eq('$3.000.00')
      end

      it 'allows changing the :separator' do
        expect(number_to_currency(30, separator:',')).to eq('$30,00')
      end

      it 'correctly formats using multiple options' do
        expect(number_to_currency(3000, delimiter:'.', separator:',')).to eq('$3.000,00')
      end
    end
  end
end
