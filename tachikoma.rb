class Tachikoma

  attr_accessor :choice
  
  def choose
    self.choice = ["R", "P", "S"].sample
  end

end