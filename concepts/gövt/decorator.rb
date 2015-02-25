module Govt
  class Decorator < Roar::Decorator
    include Roar::JSON::JSONAPI
    type :gövts

    # property :id
    property :inherent_jam
    property :flags
    property :ally
    property :enemy
    property :crime_tol
    property :smug_penalty
    property :disab_penalty
    property :board_penalty
    property :kill_penalty
    property :shoot_penalty
    property :initial_rec
  end
end
