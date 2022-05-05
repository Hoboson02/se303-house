class House

	def line(number)
		"This is the #{horse_hound(number)}#{corn(number)}#{rooster(number)}#{priest(number)}#{tattered(number)}#{maiden(number)}#{cow(number)}#{dog(number)}#{cat(number)}#{rat(number)}#{malt(number)}house that Jack built.\n"
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

	def maiden(number)
		if number >= 7
			"maiden all forlorn that milked the "
		else
			""
		end
	end

	def cow(number)
		if number >= 6
			"cow with the crumpled horn that tossed the "
		else
			""
		end
	end

	def dog(number)
		if number >= 5
			"dog that worried the "
		else
			""
		end
	end

	def cat(number)
		if number >= 4
			"cat that killed the "
		else
			""
		end
	end

	def rat(number)
		if number >= 3
			"rat that ate the "
		else
			""
		end
	end

	def recite()
		1.upto(12).collect {|i| line(i)}.join("\n")
	end

end