module Govt
  class Record < Record

    def self.find(id)
      unless id == -1
        io = File.open("/Users/tycho/Documents/Developer/Escape Velocity/resources/Override Data 1/resourceFork/#{Resource.get_type('govt')}/#{id}/data.#{Resource.get_type('govt')}")
        resource = Resource.get_class('govt').read(io)
        resource
      end
    end

    def self.all
      resources = []
      resource_paths = Dir.glob("/Users/tycho/Documents/Developer/Escape Velocity/resources/Override Data 1/resourceFork/#{Resource.get_type('govt')}/*")
      resource_paths.each do |resource_path|
        io = File.open("#{resource_path}/data.#{Resource.get_type('govt')}")
        resource = Resource.get_class('govt').read(io)
        resources << resource
      end
      resources
    end

  end
end
