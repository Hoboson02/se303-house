class House

	attr_reader :version, :randomized, :complex_randomized

	def initialize(version = "Original", randomized = false, complex_randomized = false)
		@version = version
		@randomized = randomized
		@complex_randomized = complex_randomized
		@phrases = [
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
		@subjects = [
      "malt ",
      "rat ",
      "cat ",
      "dog ",
      "cow with the crumpled horn ",
      "maiden all forlorn ",
      "man all tattered and torn ",
      "priest all shaven and shorn ",
      "rooster that crowed in the morn ",
      "farmer sowing his corn ",
      "horse and the hound and the horn "
		]
		@verbs = [
			"lay in ",
      "ate ",
      "killed ",
      "worried ",
      "tossed ",
      "milked ",
      "kissed ",
      "married ",
      "woke ",
      "kept ",
      "belonged to "
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
		if complex_randomized
			@subjects.shuffle!
			@verbs.shuffle!
			lines = (number - 2).downto(0).collect {|i| "the #{@subjects[i]}that #{@verbs[i]}"}.join()
			"#{prefix}#{lines}the house that Jack built.\n"
		else
			if randomized 
				@phrases.shuffle!
			end
			lines = (number - 2).downto(0).collect {|i| @phrases[i]}.join()
			"#{prefix}the #{lines}house that Jack built.\n"
		end
	end

	def recite()
		1.upto(12).collect {|i| line(i)}.join("\n")
	end

end
