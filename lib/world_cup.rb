class WorldCup
  attr_reader :year, :teams

  def initialize(year, teams)
    @year = year
    @teams = teams
  end

  def active_players_by_position(position)
    players = []

    @teams.each do |team|
      if !team.eliminated?
        team.players.each do |player|
          if player.position == position
            players.push(player)
          end
        end
      end
    end

    players
  end

  def all_players_by_position
    players = {}

    @teams.each do |team|
      team.players.each do |player|
        if players[player.position]
          players[player.position].push(player)
        else
          players[player.position] = [player]
        end
      end
    end
    
    players
  end


end
