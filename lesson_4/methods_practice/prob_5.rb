flinstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

p flinstones.index { |name| name.start_with?("Be") }