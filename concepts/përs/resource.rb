module Pers
  class Resource < Resource
    uint16 :link_syst
    uint16 :govt
    uint16 :ai_type
    uint16 :aggree
    uint16 :coward
    uint16 :ship_type
    array :weap_type, :type => :uint16, :initial_length => 4
    array :weap_count, :type => :uint16, :initial_length => 4
    array :ammo_load, :type => :uint16, :initial_length => 4
    uint16 :credits
    uint16 :shield_mod
    uint16 :mission_bit
    uint16 :comm_quote
    uint16 :hail_quote
    uint16 :link_mission
    uint16 :flags
  end
end