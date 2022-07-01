require_relative '../book'
require_relative '../rental'
require_relative '../person'

describe Book do
  before :each do
    @book = Book.new('Un Limited Power', 'Tony Robins')
  end

  describe '#new' do
    it 'Should return a new Book object' do
      expect(@book).to be_an_instance_of Book
    end

    it 'Should throw an error when given less than 2 arguments' do
      expect { Book.new 'Ali' }.to raise_exception ArgumentError
    end

    it 'Should show an empty array when no rental were added' do
      expect(@book.rentals).to be_empty
    end

    it 'Should add a new rental data' do
      person = Person.new('27', 'Hadi')
      @book.add_rental(person, '2022/07/01')
      expect(@book.rentals[0].person.name).to eq('Hadi')
    end
  end
end
