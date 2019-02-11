munsters = {
  "Herman" => { "age" => 32, "gender" => "male"},
  "Lily" => { "age" => 30, "gender" => "female"},
  "Grandpa" => { "age" => 402, "gender" => "male"},
  "Eddie" => { "age" => 10, "gender" => "male"},
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def age_group_add(hash)
  hash.each do |key, value|
    if (0..17).include?(value["age"])
      value["age_group"] = "kid"
    elsif (18..64).include?(value["age"])
      value["age_group"] = "adult"
    else
      value["age_group"] = "senior"
    end
  end
end

p age_group_add(munsters)