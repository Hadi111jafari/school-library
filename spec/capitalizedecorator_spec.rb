require_relative '../capitalizedecorator'
require_relative '../person'

describe CapitalizeDecorator do
  before :each do
    @person = Person.new(27, 'abdulHadiJafari')
    @capitalize = CapitalizeDecorator.new(@person)
  end

  describe '#new' do
    it 'Should return a new CapitalizeDecorator object' do
      expect(@capitalize).to be_an_instance_of CapitalizeDecorator
    end

    it 'Should throw an error when no arguments are given' do
      expect { CapitalizeDecorator.new }.to raise_exception ArgumentError
    end

    it 'Should Make upercase letter only the 1st letter of the name provided' do
      expect(@capitalize.correct_name).to eql('Abdulhadijafari')
    end
  end
end