ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10,
        "Marilyn" => 22, "Spot" => 237 }

ages_array = ages.map do |key, value|
  value
end

total_age = ages_array.sum
p total_age