gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/house'

class HouseTest < Minitest::Test

  def test_line_1
    expected = "This is the house that Jack built.\n"
    assert_equal expected, House.new.line(1)
  end

  def test_line_2
    expected = "This is the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new.line(2)
  end

  def test_line_3
    expected = "This is the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new.line(3)
  end

  def test_line_4
    expected = "This is the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new.line(4)
  end

  def test_line_5
    expected = "This is the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new.line(5)
  end

  def test_line_6
    expected = "This is the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new.line(6)
  end

  def test_line_7
    expected = "This is the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new.line(7)
  end

  def test_line_8
    expected = "This is the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new.line(8)
  end

  def test_line_9
    expected = "This is the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new.line(9)
  end

  def test_line_10
    expected = "This is the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new.line(10)
  end

  def test_line_11
    expected = "This is the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new.line(11)
  end

  def test_line_12
    expected = "This is the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new.line(12)
  end

  def test_all_the_lines
    expected = <<-TEXT
This is the house that Jack built.

This is the malt that lay in the house that Jack built.

This is the rat that ate the malt that lay in the house that Jack built.

This is the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.
    TEXT
    assert_equal expected, House.new.recite
  end

  def test_pirate_line_1
    expected = "Thar be the house that Jack built.\n"
    assert_equal expected, House.new("Pirate").line(1)
  end

  def test_pirate_line_2
    expected = "Thar be the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new("Pirate").line(2)
  end

  def test_pirate_line_3
    expected = "Thar be the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new("Pirate").line(3)
  end

  def test_pirate_line_4
    expected = "Thar be the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new("Pirate").line(4)
  end

  def test_pirate_line_5
    expected = "Thar be the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new("Pirate").line(5)
  end

  def test_pirate_line_6
    expected = "Thar be the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new("Pirate").line(6)
  end

  def test_pirate_line_7
    expected = "Thar be the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new("Pirate").line(7)
  end

  def test_pirate_line_8
    expected = "Thar be the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new("Pirate").line(8)
  end

  def test_pirate_line_9
    expected = "Thar be the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new("Pirate").line(9)
  end

  def test_pirate_line_10
    expected = "Thar be the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new("Pirate").line(10)
  end

  def test_pirate_line_11
    expected = "Thar be the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new("Pirate").line(11)
  end

  def test_pirate_line_12
    expected = "Thar be the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new("Pirate").line(12)
  end

  def test_all_the_pirate_lines
    expected = <<-TEXT
Thar be the house that Jack built.

Thar be the malt that lay in the house that Jack built.

Thar be the rat that ate the malt that lay in the house that Jack built.

Thar be the cat that killed the rat that ate the malt that lay in the house that Jack built.

Thar be the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

Thar be the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

Thar be the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

Thar be the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

Thar be the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

Thar be the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

Thar be the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

Thar be the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.
    TEXT
    assert_equal expected, House.new("Pirate").recite
  end

  def test_random_line
    expected = "This is the rooster that crowed in the morn that woke the horse and the hound and the horn that belonged to the house that Jack built.\n"
    srand 54321
    assert_equal expected, House.new("Original", true).line(3)
  end

  def test_all_the_random_lines
    expected = <<-TEXT
This is the house that Jack built.

This is the cow with the crumpled horn that tossed the house that Jack built.

This is the maiden all forlorn that milked the rat that ate the house that Jack built.

This is the cat that killed the malt that lay in the dog that worried the house that Jack built.

This is the cow with the crumpled horn that tossed the rat that ate the rooster that crowed in the morn that woke the man all tattered and torn that kissed the house that Jack built.

This is the rooster that crowed in the morn that woke the man all tattered and torn that kissed the rat that ate the malt that lay in the maiden all forlorn that milked the house that Jack built.

This is the man all tattered and torn that kissed the horse and the hound and the horn that belonged to the maiden all forlorn that milked the rooster that crowed in the morn that woke the cow with the crumpled horn that tossed the rat that ate the house that Jack built.

This is the farmer sowing his corn that kept the malt that lay in the rooster that crowed in the morn that woke the cow with the crumpled horn that tossed the cat that killed the maiden all forlorn that milked the priest all shaven and shorn that married the house that Jack built.

This is the malt that lay in the rooster that crowed in the morn that woke the priest all shaven and shorn that married the maiden all forlorn that milked the farmer sowing his corn that kept the horse and the hound and the horn that belonged to the man all tattered and torn that kissed the cow with the crumpled horn that tossed the house that Jack built.

This is the farmer sowing his corn that kept the dog that worried the horse and the hound and the horn that belonged to the rat that ate the man all tattered and torn that kissed the rooster that crowed in the morn that woke the priest all shaven and shorn that married the maiden all forlorn that milked the malt that lay in the house that Jack built.

This is the farmer sowing his corn that kept the horse and the hound and the horn that belonged to the maiden all forlorn that milked the dog that worried the cow with the crumpled horn that tossed the rooster that crowed in the morn that woke the cat that killed the man all tattered and torn that kissed the malt that lay in the rat that ate the house that Jack built.

This is the cow with the crumpled horn that tossed the rooster that crowed in the morn that woke the horse and the hound and the horn that belonged to the malt that lay in the man all tattered and torn that kissed the cat that killed the priest all shaven and shorn that married the farmer sowing his corn that kept the rat that ate the maiden all forlorn that milked the dog that worried the house that Jack built.
        TEXT
        srand 54321
    assert_equal expected, House.new("Original", true).recite
  end


  def test_random_pirate_line
    expected = "Thar be the rooster that crowed in the morn that woke the horse and the hound and the horn that belonged to the house that Jack built.\n"
    srand 54321
    assert_equal expected, House.new("Pirate", true).line(3)
  end


  def test_all_the_random_pirate_lines
    expected = <<-TEXT
Thar be the house that Jack built.

Thar be the cow with the crumpled horn that tossed the house that Jack built.

Thar be the maiden all forlorn that milked the rat that ate the house that Jack built.

Thar be the cat that killed the malt that lay in the dog that worried the house that Jack built.

Thar be the cow with the crumpled horn that tossed the rat that ate the rooster that crowed in the morn that woke the man all tattered and torn that kissed the house that Jack built.

Thar be the rooster that crowed in the morn that woke the man all tattered and torn that kissed the rat that ate the malt that lay in the maiden all forlorn that milked the house that Jack built.

Thar be the man all tattered and torn that kissed the horse and the hound and the horn that belonged to the maiden all forlorn that milked the rooster that crowed in the morn that woke the cow with the crumpled horn that tossed the rat that ate the house that Jack built.

Thar be the farmer sowing his corn that kept the malt that lay in the rooster that crowed in the morn that woke the cow with the crumpled horn that tossed the cat that killed the maiden all forlorn that milked the priest all shaven and shorn that married the house that Jack built.

Thar be the malt that lay in the rooster that crowed in the morn that woke the priest all shaven and shorn that married the maiden all forlorn that milked the farmer sowing his corn that kept the horse and the hound and the horn that belonged to the man all tattered and torn that kissed the cow with the crumpled horn that tossed the house that Jack built.

Thar be the farmer sowing his corn that kept the dog that worried the horse and the hound and the horn that belonged to the rat that ate the man all tattered and torn that kissed the rooster that crowed in the morn that woke the priest all shaven and shorn that married the maiden all forlorn that milked the malt that lay in the house that Jack built.

Thar be the farmer sowing his corn that kept the horse and the hound and the horn that belonged to the maiden all forlorn that milked the dog that worried the cow with the crumpled horn that tossed the rooster that crowed in the morn that woke the cat that killed the man all tattered and torn that kissed the malt that lay in the rat that ate the house that Jack built.

Thar be the cow with the crumpled horn that tossed the rooster that crowed in the morn that woke the horse and the hound and the horn that belonged to the malt that lay in the man all tattered and torn that kissed the cat that killed the priest all shaven and shorn that married the farmer sowing his corn that kept the rat that ate the maiden all forlorn that milked the dog that worried the house that Jack built.
    TEXT
    srand 54321
    assert_equal expected, House.new("Pirate", true).recite
  end

  def test_complex_random_line
    expected = "This is the rooster that crowed in the morn that belonged to the horse and the hound and the horn that woke the house that Jack built.\n"
    srand 54321
    assert_equal expected, House.new("Original",true, true).line(3)
  end

  def test_all_complex_random_lines
    expected = <<-TEXT
This is the house that Jack built.

This is the rooster that crowed in the morn that kissed the house that Jack built.

This is the man all tattered and torn that woke the dog that milked the house that Jack built.

This is the cat that ate the malt that kissed the farmer sowing his corn that worried the house that Jack built.

This is the priest all shaven and shorn that lay in the horse and the hound and the horn that tossed the rat that kept the dog that belonged to the house that Jack built.

This is the priest all shaven and shorn that milked the man all tattered and torn that worried the malt that belonged to the dog that killed the farmer sowing his corn that ate the house that Jack built.

This is the man all tattered and torn that killed the rat that ate the priest all shaven and shorn that woke the malt that tossed the horse and the hound and the horn that married the maiden all forlorn that worried the house that Jack built.

This is the priest all shaven and shorn that kept the cat that woke the malt that kissed the man all tattered and torn that lay in the rat that married the horse and the hound and the horn that tossed the dog that worried the house that Jack built.

This is the rooster that crowed in the morn that lay in the dog that worried the maiden all forlorn that ate the horse and the hound and the horn that tossed the malt that woke the rat that kissed the farmer sowing his corn that killed the cow with the crumpled horn that kept the house that Jack built.

This is the rat that killed the man all tattered and torn that milked the maiden all forlorn that belonged to the cow with the crumpled horn that ate the dog that kept the cat that kissed the horse and the hound and the horn that lay in the rooster that crowed in the morn that married the malt that woke the house that Jack built.

This is the farmer sowing his corn that lay in the malt that belonged to the horse and the hound and the horn that milked the cow with the crumpled horn that married the priest all shaven and shorn that ate the man all tattered and torn that worried the maiden all forlorn that kissed the rat that kept the cat that tossed the dog that woke the house that Jack built.

This is the horse and the hound and the horn that ate the cow with the crumpled horn that tossed the dog that woke the man all tattered and torn that lay in the priest all shaven and shorn that kept the maiden all forlorn that killed the rat that kissed the farmer sowing his corn that milked the malt that worried the rooster that crowed in the morn that belonged to the cat that married the house that Jack built.
    TEXT
    srand 54321
    assert_equal expected, House.new("Original",true, true).recite
  end

end
