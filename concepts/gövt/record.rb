module Govt
  class Record < Record

    def self.find(resource_id)
      Decorator.new(self.get_resource_by_id(resource_id))
    end

    def self.all
      resources = []
      resource_ids = Dir.entries("/Users/tycho/Documents/Developer/Escape Velocity/resources/Override Data 1/resourceFork/#{Resource.get_type('govt')}/*")
      resource_ids.each do |resource_id|
        next if resource_id[0] == '.'
        resources << self.find(resource_id)
      end
      resources
    end

    private

    def self.get_resource_by_id(id)
      unless id == -1
        io = File.open("/Users/tycho/Documents/Developer/Escape Velocity/resources/Override Data 1/resourceFork/#{Resource.get_type('govt')}/#{id}/data.#{Resource.get_type('govt')}")
        resource = Resource.get_class('govt').read(io)
        meta = self.get_meta_by_id(id)
        resource.id = meta['id']
        resource.name = meta['name']
        resource
      end
    end

    def self.get_meta_by_id(id)
      unless id == -1
        JSON.parse(File.read("/Users/tycho/Documents/Developer/Escape Velocity/resources/Override Data 1/resourceFork/#{Resource.get_type('govt')}/#{id}/meta.json"))
      end
    end

  end
end
