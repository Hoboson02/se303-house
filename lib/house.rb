class House

	attr_reader :version

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
	end

	def prefix
		"This is "
	end
	def line(number)
		lines = number.downto(0).collect {|i| phrase(i)}.join()
		"#{prefix}the #{lines}house that Jack built.\n"
	end

	def phrase(number)
		case number 
		when 12
			"horse and the hound and the horn that belonged to the "
		when 11
			"farmer sowing his corn that kept the "
		when 10
			"rooster that crowed in the morn that woke the "
		when 9
			"priest all shaven and shorn that married the "
		when 8
			"man all tattered and torn that kissed the "
		when 7
			"maiden all forlorn that milked the "
		when 6
			"cow with the crumpled horn that tossed the "
		when 5
			"dog that worried the "
		when 4
			"cat that killed the "
		when 3
			"rat that ate the "
		when 2
			"malt that lay in the "
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