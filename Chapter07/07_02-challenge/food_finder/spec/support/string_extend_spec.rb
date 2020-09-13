# frozen_string_literal: true

describe 'String' do
  describe '#titleize' do
    it 'capitalizes each word in a string' do
      expect('Hello world'.titleize).to eq('Hello World')
    end

    it 'works with single-word strings' do
      expect('hello'.titleize).to eq('Hello')
    end

    it 'capitalizes all uppercase strings' do
      expect('HELLO WORLD'.titleize).to eq('Hello World')
    end

    it 'capitalizes mixed-case strings' do
      expect('HelLo woRLd'.titleize).to eq('Hello World')
    end
  end

  describe '#blank?' do
    it 'returns true if string is empty' do
      expect('').to be_blank
    end

    it 'returns true if string contains only spaces' do
      expect("  ").to be_blank
    end

    it 'returns true if string contains only tabs' do
      expect("\t\t\t").to be_blank
    end
    # Get a tab using a double-quoted string with \t
    # example: "\t\t\t"

    it 'returns true if string contains only spaces and tabs' do
      expect(" \t\t\t").to be_blank
    end

    it 'returns false if string contains a letter' do
      expect("a \t\t\t").not_to be_blank
    end

    it 'returns false if string contains a number' do
      expect("6 \t\t\t").not_to be_blank
    end
  end
end
