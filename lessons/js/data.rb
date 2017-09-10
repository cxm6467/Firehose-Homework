require 'active_support/all'

num = 2
f = 1.0
string = "Hello!"
sym = :symbol


array = [1,2,3,4]

hash = {
  1 => "One",
  2 => "Two",
  3 => "Three",
  4 => "Four"
}

puts hash.to_json.inspect
json_string = '{"1":"One","2":"Two","3":"Three","4":"Four"}'
parsed = ActiveSupport::JSON.decode(json_string)

puts parsed["1"]