class Team

attr_reader :name, :players, :points
attr_accessor :coach

  def initialize(name,players,coach)
    @name = name
    @players = players
    @coach = coach
    @points = 0
  end

  def new_player(player_name)
    @players << player_name
  end

  def find_player(name)
    return @players.include?(name)
  end

  def outcome(outcome)
    if outcome == 'win'
      @points += 1
    end
  end
end
