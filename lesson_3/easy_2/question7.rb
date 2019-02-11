flinstones = %w[Fred Barney Wilma Betty BamBam Pebbles]
flinstones.insert(6, "Dino", "Hoppy")

p flinstones

#OR

flinstones.push("Dino").push("Hoppy")

# OR

flinstones.concat(%w(Dino Hoppy))