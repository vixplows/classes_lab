class Team
  attr_accessor :team_name, :players, :coach

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
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
end
  

  # end

  # def find_pet_by_name(pet_shop, pet_name)
   # match = nil
  #   for pet in pets_in_stock(pet_shop)
  #     match = pet if(pet[:name] == pet_name)
  #   end
  #   return match