module Flet
  class Decorator < Roar::Decorator
    include Roar::JSON::JSONAPI
    type :flëts

    property :lead_ship_type
    property :escort_type
    property :escort_type_min
    property :escort_type_max
    property :government
    property :link_syst
    property :mission_bit
  end
end
