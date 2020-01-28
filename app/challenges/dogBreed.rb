class Dog
  attr_accessor :breed, :color

  def initialize(breed, color)
    @breed = breed
    @color = color
  end

  def output_dog
    puts "This dog is a #{@breed}. It has #{@color} fur."
  end
end

dog = Dog.new(:husky, :red)
dog.output_dog
