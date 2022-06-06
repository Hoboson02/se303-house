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
    expected = "This is the maiden all forlorn that kept the rooster that crowed in the morn that belonged to the horse and the hound and the horn that woke the house that Jack built.\n"
    srand 54321
    assert_equal expected, House.new("Original",true, true).line(3)
  end

  # def test_all_complex_random_lines
  #   excpected = <<-TEXT

  #   TEXT
  #   srand 54321
  #   assert_equal expected, House.new()

end
