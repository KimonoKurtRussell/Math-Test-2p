module Math_Game_2p

class Player
  attr_accessor :id, :lives
  def initialize(id)
    @id = "Player #{id}"
    @lives = 3
  end
  end
end