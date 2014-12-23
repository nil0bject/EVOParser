# shïp
class Ship < Resource
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
end
