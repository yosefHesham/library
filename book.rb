class Book
  attr :title, :author

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(rental)
    ## has
    @rentals.push(rental)
    ## belongs to
    rental.book = self

    rental.person = self
  end
end
