require_relative '../nameable'

describe Nameable do
  before :each do
    @nameable = Nameable.new
  end

  describe '#new' do
    it 'Should return a new Nameable object' do
      expect(@nameable).to be_an_instance_of Nameable
    end

    it 'Should be implemented in a subclass' do
      expect { subject.correct_name }.to raise_error(NotImplementedError)
    end
  end
end
