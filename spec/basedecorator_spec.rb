require_relative '../basedecorator'
require_relative '../person'

describe Decorator do
  before :each do
    @person = Person.new(15, 'AbdulHadiJafari')
    @decorator = Decorator.new(@person)
  end

  describe '#new' do
    it 'Should return a new Decorator object' do
      expect(@decorator).to be_an_instance_of Decorator
    end

    it 'Should throw an error when no arguments are given' do
      expect { Decorator.new }.to raise_exception ArgumentError
    end

    it 'Should show the name when using the method correct_name' do
      expect(@decorator.correct_name).to eq('AbdulHadiJafari')
    end
  end
end