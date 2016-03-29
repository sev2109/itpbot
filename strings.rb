def strings
	puts "Hello! What words would you like to turn into individual strings? Paste now."
	words = gets
	array = words.split
		array.collect do |word|
		puts "\"#{word}\","
		end
end

strings