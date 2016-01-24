module Dude
  class Record < Resource
    int16 :ai_type
    array :ship_type_ids, :initial_length => 4 do
      int16
    end
    array :ship_type_probabilities, :initial_length => 4 do
      int16
    end
    int16 :government_id
    int16 :booty

    def government
      puts ::Record.get_class('govt')
      ::Record.get_class('govt').find(government_id)
    end

    def ship_types
      ship_records = []
      self.ship_type_ids.each do |ship_id|
        ship_records << Resource.get_class('ship').find(ship_id)
      end
      ship_records
    end

    def self.find(id)
      io = File.open("/Users/tycho/Documents/Developer/Escape Velocity/resources/Override Data 1/resourceFork/#{Resource.get_type('dude')}/#{id}/data.#{Resource.get_type('dude')}")
      resource = Resource.get_class('dude').read(io)
      resource
    end

    def self.all
      resources = []
      resource_paths = Dir.glob("/Users/tycho/Documents/Developer/Escape Velocity/resources/Override Data 1/resourceFork/#{Resource.get_type('dude')}/*")
      resource_paths.each do |resource_path|
        io = File.open("#{resource_path}/data.#{Resource.get_type('dude')}")
        resource = Resource.get_class('dude').read(io)
        resources << resource
      end
      resources
    end
  end
end
