module Desc
  class Decorator < Roar::Decorator
    include Roar::JSON::JSONAPI
    type :descs

    # property :id
    property :string
  end
end
