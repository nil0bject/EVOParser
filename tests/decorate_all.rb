require_relative '../lib/evo_parser'

io = File.open("/Users/tycho/Documents/Developer/Escape Velocity/resources/Override Data 1/resourceFork/düde/128/data.düde")
puts "XXXXXXXXX#{Resource.get_class('düde')}"
desc = Resource.get_class('düde').read(io)
puts Dude::Decorator.prepare(desc).to_json
