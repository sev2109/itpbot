def strings(words)
	array = words.split
		array.collect do |word|
		puts "\"#{word}\","
		end
end

strings ("archive art Capitalism commodity biography Copyright Creative Commons critical pedagogy cyborg Cyborg Manifesto database Dialectic digital collection digital humanities Economic Structure Educational Technology embodiment eversion evolution Feminism film Free Software games gender Haraway HOWTO information internet Irony knowledge Labor learning Machines Marx N. Katherine Hayles Nakamura New Media open source pedagogy posthuman Power Structure race sharing Technology Twitter Wikipedia about me academia agile development bios Bootcamp Chris Stein collaboration Contexts Digital Fellows digitalhumanities discussion diversity education English Ethan Marcotte GCDI Get Real guest speakers independent study interactive intersectionality ITP 2011 ITP 2016 ITP students Jason Santa Maria learning lightning talks memory NYCDH Office Hours Omeka online Practicalities project development project proposals responsive web design scope creep start-up culture teaching technology Tom Kuhlmann user experience waterfall method Wikipedia workshops")

