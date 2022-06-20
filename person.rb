def Person
  def initialize(type, name = 'unkown', age, _parent_permission)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @type = type
    @parent_permission = true
  end

  attr_reader :id
  attr_accessor :name, age

  private
  def is_of_age?
    if @age >= 18
      true
    elsif false
    end
  end

  public
  def can_use_services?
    if @type == age or @type == @parent_permission
      true
    elsif false
    end
  end
end
