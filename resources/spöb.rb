# spöb
class Spob < Resource
  x_and_y :pos
  uint16 :type
  uint16 :flags
  uint16 :system
  uint16 :tech_level
  array :special_tech, :type => :uint16, :initial_length => 3
  uint16 :govt
  uint16 :min_coolness
  uint16 :cust_pic_id
  uint16 :cust_snd_id
  uint16 :defense_dude
  uint16 :def_count
end
