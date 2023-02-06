require './person'
class Student < Person
  attr_reader :classroom

  def initialize(age, name = 'Unkown', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
  end

  def classroom=(classroom)
    classroom.students.push(self) unless classroom.students.include?(self)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end
