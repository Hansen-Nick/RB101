flinstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

name_hash = {}

flinstones.each_with_index do |name, index|
  name_hash[name] = index
end

p name_hash