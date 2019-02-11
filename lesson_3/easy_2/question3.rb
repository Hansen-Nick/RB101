ages = {"Herman" => 32, "Lilly" => 30, "Grandpa" => 5843, "Eddie" => 10 }

ages["Marilyn"] = 22

ages["Spot"] = 237

p ages

# OR CAN USE THIS

ages = {"Herman" => 32, "Lilly" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge!(additional_ages)