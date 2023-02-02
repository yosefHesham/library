require './person'
class Student < Person
  attr_reader :classroom

  def initialize(age, name = 'Unkown', parent_permission: true)
    super(age, name, parent_permission)
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.add_student(self)
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end
