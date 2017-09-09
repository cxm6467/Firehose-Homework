class Person
  attr_reader :name, :age
  def initialize (name, age)
    @name = name
    @age = age
  end
end

chris = Person.new("Chris", 27)
stacy = Person.new("Stacy", 32)
trevr = Person.new("Trevor", 19)
jayda = Person.new("Jayda", 19)


people = [chris, stacy, trevr, jayda]

def people_sort(people, comparer)
  people.sort do |x,y|
    comparer.call(x) <=> comparer.call(y)
  end
end

grab_age = lambda do |person|
  person.age
end

grab_name = lambda do |person|
  person.name
end

sorted_people = people_sort(people, grab_name)

puts sorted_people.inspect