class Player
  attr_reader :name, :position

  def initialize(attrs)
    @name = attrs[:name]
    @position = attrs[:position]
  end

end
