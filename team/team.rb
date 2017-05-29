class Team
  attr_accessor :team_name, :players, :coach
  attr_reader :points

  def initialize(team_name, players, coach, points)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = points
  end

  def add_player_to_players(new_player)
    @players.push(new_player)
  end

  def find_player_name(name)
    match = false
    for player in @players
      match = true if player == name
    end
    return match
  end

  def game_points(result)
    (@points = @points + 1) if result == "win"
  end

end