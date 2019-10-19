class Player

  attr_accessor :choice, :pid

  def initialize( pid )
    @pid = pid
  end
  
  def beats?( opponent )
    if self.choice == 'R' && opponent.choice == 'S' || self.choice == 'P' && opponent.choice == 'R' || self.choice == 'S' && opponent.choice == 'P'
      true
    elsif self.choice == 'R' && opponent.choice == 'P' || self.choice == 'P' && opponent.choice == 'S' || self.choice == 'S' && opponent.choice == 'R'
      false
    end
  end
  
  def draw?( opponent )
    if self.choice == opponent.choice
      true
    end
  end

end