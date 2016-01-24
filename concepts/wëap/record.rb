module Weap
  class Record < Resource
    uint16 :reload
    uint16 :life_count
    uint16 :mass_dmg
    uint16 :energy_dmg
    uint16 :guidance
    uint16 :speed
    uint16 :ammo_type
    uint16 :graphic
    uint16 :inaccuracy
    uint16 :sound
    uint16 :impact
    uint16 :explod_type
    uint16 :prox_radius
    uint16 :blast_radius
    uint16 :flags
    uint16 :seeker
    uint16 :smoke_set
    uint16 :decay
  end
end
