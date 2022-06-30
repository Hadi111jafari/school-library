require './person'

class Teacher < Person
  attr_accessor :status, :specialization

  def initialize(specialization, age, name = 'unkown', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @specialization = specialization
    @status = status
  end

  def can_use_services?
    true
  end
end
