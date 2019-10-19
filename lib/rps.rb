class RPS

  def initialize( players )
    @players = players
    @p1 = Player.new(1)
    @p2 = Player.new(2)
    @current_player = @p1
    @tachikoma = Tachikoma.new
    @valid_input = false
  end

  def play
    welcome_message
    loop do
      until @valid_input
        prompt_user_input
      end
      @tachikoma.choose
      determine_victor
    end
  end

  def welcome_message
    puts ""
    puts "Bem-vindo ao Rock, Paper e Scissors!"
    puts ""
  end

  def prompt_user_input
    puts ""
    puts "Escolha sua arma, Jogador #{@current_player.pid}: Rock ('R')\nPaper ('P')\nScissors ('S')\nEscolha 'Q' para sair."
    @current_player.choice = gets.chomp.upcase
    validate_input
  end

  def validate_input
    if @current_player.choice == "Q"
      exit
    elsif !["R","P","S"].include?( @current_player.choice )
      puts ""
      puts "Por favor, insira uma escolha válida!"
      @valid_input = false
    else
      if @players == 2
        if @current_player.pid == 1
          @valid_input = false
          @current_player = @p2
        else
          @valid_input = true
        end
      else
        @valid_input = true
      end
    end
  end

  def determine_victor
    if @players == 2
      if @p1.draw? ( @p2 )
        puts ""
        puts "Player 1 picks #{@p1.choice}, Player 2 picks #{@p2.choice}."
        puts "It's a draw!"
        puts ""
      elsif @p1.beats? ( @p2 )
        puts ""
        puts "Player 1 picks #{@p1.choice}, Player 2 picks #{@p2.choice}."
        puts "Player 1 wins!"
        puts ""
      else
        puts ""
        puts "Player 1 picks #{@p1.choice}, Player 2 picks #{@p2.choice}."
        puts "Player 2 wins!"
        puts ""
      end
      @current_player = @p1
      @valid_input = false
    else
      if @p1.draw? ( @tachikoma )
        puts ""
        puts "You pick #{@p1.choice}, Tachikoma picks #{@tachikoma.choice}."
        puts "It's a draw!"
        puts ""
      elsif @p1.beats?( @tachikoma )
        puts ""
        puts "You pick #{@p1.choice}, Tachikoma picks #{@tachikoma.choice}."
        puts "You win!"
        puts ""
      else
        puts ""
        puts "You pick #{@p1.choice}, Tachikoma picks #{@tachikoma.choice}."
        puts "Tachikoma wins!"
        puts ""
      end
      @valid_input = false
    end
  end

end
