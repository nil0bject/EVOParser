class Dude < Resource
  int16 :ai_type
  array :ship_types, :initial_length => 4 do
    int16
  end
  array :ship_type_probabilities, :initial_length => 4 do
    int16
  end
  int16 :government
  int16 :booty
end
