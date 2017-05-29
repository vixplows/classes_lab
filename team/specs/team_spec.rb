require('minitest/autorun')
require("minitest/rg")
require_relative('../team')

class TestTeam < MiniTest::Test

  def setup
  @team = Team.new("Tranmere Rovers", ["Billy Bob", "Junior Joe", "Manic Mary", "Happy Harriet", "Speedy Sam"], "The Boss")
  end

  def test_get_team_name
    assert_equal("Tranmere Rovers", @team.team_name)
  end

  def test_get_players
    assert_equal(["Billy Bob", "Junior Joe", "Manic Mary", "Happy Harriet", "Speedy Sam"], @team.players)
  end

  def test_get_coach
    assert_equal("The Boss", @team.coach)
  end

  def test_set_coach
    @team.coach="The Gaffer"
    assert_equal("The Gaffer", @team.coach)
  end

  def test_add_player_to_players
    @team.add_player_to_players("Zany Zee")
    assert_equal(["Billy Bob", "Junior Joe", "Manic Mary", "Happy Harriet", "Speedy Sam", "Zany Zee"], @team.players)
  end

  def test_find_player_name
    assert_equal(true, @team.find_player_name("Junior Joe"))
  end
end

# Add a method that takes in a string of a player's name and checks to see if they are in the players array.

# def test_find_pet_by_name__returns_pet
#   pet = find_pet_by_name(@pet_shop, "Arthur")
#   assert_equal("Arthur", pet[:name])
# end

# def find_pet_by_name(pet_shop, pet_name)
#   match = nil
#   for pet in pets_in_stock(pet_shop)
#     match = pet if(pet[:name] == pet_name)
#   end
#   return match
# end
