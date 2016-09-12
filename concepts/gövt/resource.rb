module Govt
  class Resource < Resource
    virtual :id
    virtual :name
    
    int16 :inherent_jam
    int16 :flags
    int16 :ally
    int16 :enemy
    int16 :crime_tol
    int16 :smug_penalty
    int16 :disab_penalty
    int16 :board_penalty
    int16 :kill_penalty
    int16 :shoot_penalty
    int16 :initial_rec
  end
end
