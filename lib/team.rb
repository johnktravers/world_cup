class Team
  attr_reader :country, :players
  attr_writer :eliminated

  def initialize(country)
    @country = country
    @eliminated = false
    @players = []
  end

  def eliminated?
    @eliminated
  end

  def add_player(player)
    @players.push(player)
  end

  def players_by_position(position)
    @players.find_all do |player|
      position == player.position
    end
  end

end
