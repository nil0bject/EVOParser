module Oops
  class Record < Resource
    uint16 :stellar
    uint16 :commodity
    uint16 :price_delta
    uint16 :duration
    uint16 :freq
    uint16 :mission_bit
  end
end
