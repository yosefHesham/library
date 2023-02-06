class Rental
  attr_accessor :date, :book, :person

  def initialize(date, book, person)
    @date = date

    # #3 belongs to
    @book = book
    @person = person

    ## has
    book.add_rental(self)
    person.add_rental(self)
  end
end
