class Person
  attr_reader :id
  attr_accessor :name, age

  def initialize(type, age, _parent_permission, name = 'unkown')
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @type = type
    @parent_permission = true
  end

  def can_use_services?
    @type == age or @type == @parent_permission
  end

  private

  def of_age?
    @age >= 18
  end
end
