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

    def self.model_type
      'düde'
    end

    def government
      unless government_id == -1
        io = File.open("/Users/tycho/Documents/Developer/Escape Velocity/resources/Override Data 1/resourceFork/gövt/#{government_id}/data.gövt")
        Resource.get_class('gövt').read(io)
      end
    end

    def ship_types
      ship_records = []
      self.ship_type_ids.each do |ship_id|
        io = File.open("/Users/tycho/Documents/Developer/Escape Velocity/resources/Override Data 2/resourceFork/shïp/#{ship_id}/data.shïp")
        ship_records << Resource.get_class('shïp').read(io)
      end
      ship_records
    end

    def self.find(id)
      io = File.open("/Users/tycho/Documents/Developer/Escape Velocity/resources/Override Data 1/resourceFork/#{self.model_type}/#{id}/data.#{self.model_type}")
      resource = Resource.get_class(self.model_type).read(io)
      resource
    end

    def self.all
      resources = []
      resource_paths = Dir.glob("/Users/tycho/Documents/Developer/Escape Velocity/resources/Override Data 1/resourceFork/#{self.model_type}/*")
      resource_paths.each do |resource_path|
        io = File.open("#{resource_path}/data.#{self.model_type}")
        resource = Resource.get_class(self.model_type).read(io)
        resources << resource
      end
      resources
    end
  end
end
