class BadConnection
  attr_reader :input
  def initialize
    @ready_to_quit = false
    @goodbye = 0
    @input = input
  end

  def greeting
    puts "HELLO, THIS IS A GROCERY STORE!"
  end

  def phone_call
    @input = gets.chomp
    until @ready_to_quit == true
      if too_quiet
      elsif any_further_assistance
      elsif missunderstood
      elsif hang_up
      else silence
    end
    @input = gets.chomp
  end
  end

  def silence
    if @input.empty? == true
      puts "HELLO!?"
    end
  end

  def too_quiet
    if (@input == @input.downcase) && !input.empty?
      puts "I AM HAVING A HARD TIME HEARING YOU."
    end
  end

  def any_further_assistance
    if @input == "GOODBYE!" && @goodbye >= 1
      puts "THANK YOU FOR CALLING!"
      @ready_to_quit = true
      hang_up
    elsif @input == "GOODBYE!"
      puts "ANYTHING ELSE I CAN HELP WITH?"
      @goodbye += 1
    end
  end

  def hang_up
    if @ready_to_quit == true
      exit
    end
  end

  def missunderstood
    if (@input == @input.upcase) && !input.empty?
      puts "NO, THIS IS NOT A PET STORE"
    end
  end
end


badconnection = BadConnection.new
badconnection.greeting
badconnection.phone_call
