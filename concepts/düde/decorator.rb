module Dude
  class Decorator < Roar::Decorator
    include Roar::JSON::JSONAPI
    type :düde

    # property :id
    property :ai_type
    property :ship_type_ids
    property :ship_type_probabilities
    property :government_id
    property :booty
    compound do
      property :government
      property :ship_types
    end
    # collection :ship_types, extend: Ship::Decorator
  end
end
