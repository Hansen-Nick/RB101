flinstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flinstones.map! do |name|
  name[0, 3]
end

p flinstones