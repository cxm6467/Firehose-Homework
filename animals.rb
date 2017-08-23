class Animal 
  def eat 
    puts "om nom nom"
  end
end

class Dog < Animal
  def bark
    puts "woof woof woof!"
  end
end

class Cat < Animal
  def meow
    puts "Meow!"
  end
end

class Duck < Animal
  def quack
    puts "Quack!"
  end
end

class GoldenRetriever < Dog
  def fetch
    puts "Fetched a bone"
  end
end

class Poodle < Dog
end

animal = Animal.new
animal.eat

dog = Dog.new
dog.eat
dog.bark

cat = Cat.new
cat.eat
cat.meow

duck = Duck.new
duck.eat
duck.quack

gr = GoldenRetriever.new
gr.eat
gr.bark
gr.fetch

p = Poodle.new
puts p.is_a?(Cat)