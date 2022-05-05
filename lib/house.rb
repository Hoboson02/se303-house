class House

	def line(number)
		case number
		when 1
			"This is the #{malt(number)}house that Jack built.\n"
		when 2
			"This is the #{malt(number)}house that Jack built.\n"
		when 3
			"This is the rat that ate the malt that lay in the house that Jack built.\n"
		when 4
			"This is the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
		when 5
			"This is the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
		when 6
			"This is the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
		else
			"This is the #{horse_hound(number)}#{corn(number)}#{rooster(number)}#{priest(number)}#{tattered(number)}maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
		end
	end

	def malt(number)
		if number >= 2
			"malt that lay in the "
		else
			""
		end
	end

	def horse_hound(number)
		if number >= 12
			"horse and the hound and the horn that belonged to the "
		else
			""
		end
	end

	def corn(number)
		if number >= 11
			"farmer sowing his corn that kept the "
		else
			""
		end
	end

	def rooster(number)
		if number >= 10
			"rooster that crowed in the morn that woke the "
		else
			""
		end
	end

	def priest(number)
		if number >= 9
			"priest all shaven and shorn that married the "
		else
			""
		end
	end

	def tattered(number)
		if number >= 8
			"man all tattered and torn that kissed the "
		else
			""
		end
	end

	def recite()
		1.upto(12).collect {|i| line(i)}.join("\n")
	end

end