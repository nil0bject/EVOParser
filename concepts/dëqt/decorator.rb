module Deqt
  class Decorator < ::Roar::Decorator
    include ::Roar::JSON::JSONAPI
    type :deqts

    property :id
    property :string
  end
end
