module Ship
  class Record < Resource
    uint16 :holds
    uint16 :shield
    uint16 :accel
    uint16 :speed
    uint16 :maneuver
    uint16 :fuel
    uint16 :free_mass
    uint16 :armor
    uint16 :shield_re
    array :weap_type, :type => :uint16, :initial_length => 4
    array :weap_count, :type => :uint16, :initial_length => 4
    array :ammo_load, :type => :uint16, :initial_length => 4
    uint16 :max_gun
    uint16 :max_tur
    uint16 :tech_level
    uint16 :death_delay
    array :turret_y_disp, :type => :uint16, :initial_length => 4
    uint16 :mass
    uint16 :dimension
    uint16 :inherent_ai
    uint16 :mission_bit
    uint16 :inherent_govt
    uint16 :flags
    uint16 :shot_x_offset
    uint16 :default_items
    uint16 :item_count
    uint16 :fuel_regen
    uint16 :skill_var

    def self.model_type
      'shïp'
    end

    def self.find(id)
      io = File.open("/Users/tycho/Documents/Developer/Escape Velocity/resources/Override Data 2/resourceFork/#{self.model_type}/#{id}/data.#{self.model_type}")
      resource = Resource.get_class(self.model_type)
      resource.io = io
      resource.read(io)
    end

    def self.all
      resources = []
      resource_paths = Dir.glob("/Users/tycho/Documents/Developer/Escape Velocity/resources/Override Data 2/resourceFork/#{self.model_type}/*")
      resource_paths.each do |resource_path|
        io = File.open("#{resource_path}/data.#{self.model_type}")
        meta = JSON.parse(File.read("#{resource_path}/meta.json"))
        resource = Resource.get_class(self.model_type)
        resource.meta = meta
        resources << resource.read(io)
      end
      resources
    end
  end
end
