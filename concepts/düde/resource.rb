module Dude
  class Resource < Resource
    int16 :ai_type
    array :ship_types, :initial_length => 4 do
      int16
    end
    array :ship_type_probabilities, :initial_length => 4 do
      int16
    end
    int16 :government_id
    int16 :booty

    def government
      io = File.open("/Users/tycho/Documents/Developer/Escape Velocity/resources/Override Data 1/resourceFork/gövt/#{government_id}/data.gövt")
      Resource.get_class('gövt').read(io)
    end
  end
end
