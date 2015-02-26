module Syst
  class Resource < Resource
    x_and_y :pos
    array :con, :type => :uint16, :initial_length => 5
    array :nav_def, :type => :uint16, :initial_length => 4
    array :dude_type, :type => :uint16, :initial_length => 4
    array :prob, :type => :uint16, :initial_length => 4
    uint16 :avg_ships
    uint16 :govt
    uint16 :message
    uint16 :asteroids
    uint16 :interference
    uint16 :vis_bit
    array :con2, :type => :uint16, :initial_length => 11
  end
end