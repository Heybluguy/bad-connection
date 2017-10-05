class BadConnection
  attr_reader :input
  def initialize
    @ready_to_quit = false
    @goodbye = 0
    @input = ""
  end

  def greeting
    puts "HELLO, THIS IS A GROCERY STORE!"
  end

  def phone_call
    until @ready_to_quit == true
      listening
      if too_quiet
      elsif any_further_assistance
      elsif missunderstood
      else silence
      end
    end
  end

  def silence
    puts "HELLO!?" if input.empty? == true
  end

  def too_quiet
    if (input != input.upcase) && !input.empty?
      puts "I AM HAVING A HARD TIME HEARING YOU."
    end
  end

  def any_further_assistance
    if input == "GOODBYE!" && @goodbye >= 1
      puts "THANK YOU FOR CALLING!"
      @ready_to_quit = true
    elsif input == "GOODBYE!"
      puts "ANYTHING ELSE I CAN HELP WITH?"
      @goodbye += 1
    end
  end

  def missunderstood
    if (input == input.upcase) && !input.empty?
      puts "NO, THIS IS NOT A PET STORE"
    end
  end

  def listening
    @input = gets.chomp
  end
end
