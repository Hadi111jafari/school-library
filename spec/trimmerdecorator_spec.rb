require_relative '../trimmercecorator'
require_relative '../capitalizedecorator'
require_relative '../person'

describe TrimmerDecorator do
  before :each do
    person = Person.new(27, 'abdulHadiJafari')
    capitalize = CapitalizeDecorator.new(person)
    @trimmer = TrimmerDecorator.new(capitalize)
  end

  describe '#new' do
    it 'Should return a new TrimmerDecorator object' do
      expect(@trimmer).to be_an_instance_of TrimmerDecorator
    end

    it 'Should throw an error when no arguments are given' do
      expect { TrimmerDecorator.new }.to raise_exception ArgumentError
    end

    it 'Should return a max lenght name of 10' do
      expect(@trimmer.correct_name).to eq('Abdulhadij')
    end
  end
end
