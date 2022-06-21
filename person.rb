class Person
  attr_reader :id
  attr_accessor :name, :age

  def initialize(age, name: 'unkown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    return true if @age || @parent_permission
  end

  private

  def of_age?
    return true if @age >= 18
  end
end
