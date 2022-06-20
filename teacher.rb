require './person'

class Teacher < Person
  def initialize(specialization)
    super
    @specialization = specialization
  end

  def can_use_services?
    return unless @type == age or @type == @parent_permission
  end
end
