class User
  attr_accessor :weight

  def initialize(name, age, weight)
    @name = name
    @age = age
    @weight = weight
  end

  def introduce
    puts "My name is #{@name} and I am #{@age} years old."
  end

  def health
    puts "My weight is #{@weight}."
  end
end

user1 = User.new('Alice', 20, 60.0)
user1.introduce
user1.health
user1.weight = 58.0
user1.health
