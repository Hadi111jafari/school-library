require_relative '../rental'
require_relative '../book'
require_relative '../person'

describe Rental do
  before :each do
    person = Person.new(17, 'Hadi')
    book = Book.new('Un Limited Power', 'Tony Robins')
    @rental = Rental.new('2022/07/01', book, person)
  end

  describe '#new' do
    it 'Should return a new Rental object' do
      expect(@rental).to be_an_instance_of Rental
    end

    it 'Should throw an error when less than 3 arguments are given' do
      expect { Rental.new }.to raise_exception ArgumentError
    end

    it 'Should return rentals date' do
      expect(@rental.date).to eq('2022/07/01')
    end

    it 'Should return the book name' do
      expect(@rental.book.title).to eq('Un Limited Power')
    end

    it 'Should return renters name' do
      expect(@rental.person.name).to eq('Hadi')
    end
  end
end
