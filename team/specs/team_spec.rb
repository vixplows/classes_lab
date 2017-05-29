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
    
  end

end