require './person'
class Teacher < Person
  def initialize(age, name, specilization)
    super(age, name)
    @specilization = specilization
  end

 def can_use_services?
  true
 end
end
