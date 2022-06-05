class House

	attr_reader :version, :randomized

	def initialize(version = "Original", randomized = false)
		@version = version
		@randomized = randomized
		@phrases = [
			"house that Jack built.", 
			"malt that lay in the ", 
			"rat that ate the ",
			"cat that killed the ",
			"dog that worried the ",
			"cow with the crumpled horn that tossed the ",
			"maiden all forlorn that milked the ",
			"man all tattered and torn that kissed the ", 
			"priest all shaven and shorn that married the ",
			"rooster that crowed in the morn that woke the ",
			"farmer sowing his corn that kept the ", 
			"horse and the hound and the horn that belonged to the "
		]
	end

	def prefix
		case version 
		when "Pirate"
			"Thar be "
		else
			"This is "
		end
	end

	def line(number)
		if randomized 
			@phrases.shuffle!
		end
		lines = (number - 1).downto(0).collect {|i| @phrases[i]}.join()
		"#{prefix}the #{lines}\n"
	end

	def recite()
		1.upto(12).collect {|i| line(i)}.join("\n")
	end

end
