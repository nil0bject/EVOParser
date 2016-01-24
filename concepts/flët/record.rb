module Flet
  class Record < Resource
    int16 :lead_ship_type
    array :escort_type, :initial_length => 4 do
      int16
    end
    array :escort_type_min, :initial_length => 4 do
      int16
    end
    array :escort_type_max, :initial_length => 4 do
      int16
    end
    int16 :government_id
    int16 :link_syst
    int16 :mission_bit
  end
end
