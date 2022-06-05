class House

	attr_reader :version

	phrases = []

	def initialize(version = OriginalHouse)
		@version = version
	end

	def line(number)
		version.new(number).line(number)
	end
	def recite()
		1.upto(12).collect {|i| line(i)}.join("\n")
	end

end

class OriginalHouse

	attr_reader :number
	
	def initialize(number)
		@number = number 
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
		"This is "
	end
	def line(number)
		lines = (number - 1).downto(0).collect {|i| @phrases[i]}.join()
		"#{prefix}the #{lines}\n"
	end

	def phrase(number)
		case number 
		when 12
			@phrases[11]
		when 11
			@phrases[10]
		when 10
			@phrases[9]
		when 9
			@phrases[8]
		when 8
			@phrases[7]
		when 7
			@phrases[6]
		when 6
			@phrases[5]
		when 5
			@phrases[4]
		when 4
			@phrases[3]
		when 3
			@phrases[2]
		when 2
			@phrases[1]
		when 1
			@phrases[0]
		else
			""
		end
	end
end

class PirateHouse < OriginalHouse
	def prefix
		"Thar be "
	end
end
