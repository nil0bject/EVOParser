module Dude
  class Decorator < Roar::Decorator
    include Roar::JSON::JSONAPI
    type :düdes

    # property :id
    property :ai_type
    property :ship_types
    property :ship_type_probabilities
    # property :government
    # has_one :government
    compound do
      property :government
    end
    # collection :government, extend: ::Govt::Decorator, class: ::Govt::Resource

    property :booty
  end
end
