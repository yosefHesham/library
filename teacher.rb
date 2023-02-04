require './person'
class Teacher < Person
  def initialize(age, specilization, name = 'Unkown', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @specilization = specilization
  end

  def can_use_services?
    true
  end
end
