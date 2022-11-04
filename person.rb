class Person
  def initialize(age, name = 'Unkown', _parent_permission = true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
  end

  attr_reader :id
  attr_accessor :name, :age

  def can_use_services?
    is_of_age?
  end

  private

  def is_of_age?
    true if @age >= 18
    false
  end
end
