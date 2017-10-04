class BadConnection

  def initialize
    @ready_to_quit = false
    @goodbye = 0
  end

  def greeting
    puts "HELLO, THIS IS A GROCERY STORE!"
  end

  def listening
    until @ready_to_quit == true
    input = gets.chomp
    end
  end

  def silence
    if input.empty? == true
      puts "HELLO!?"
    end
    badconnection.listening
  end

  def too_quiet
    if input == input.downcase
      puts "I AM HAVING A HARD TIME HEARING YOU."
    end
    badconnection.listening
  end

  def end_of_call
    if @goodbye == 1
      puts "THANK YOU FOR CALLING!"
      @ready_to_quit = true
    end
    badconnection.listening
  end

  def any_further_assistance
    if input == "GOODBYE!"
      puts "ANYTHING ELSE I CAN HELP WITH?"
      @goodbye += 1
    end
    badconnection.listening
  end

  def hang_up
    if @ready_to_quit == true
      exit
    end
    badconnection.listening
  end

  def missunderstood
    if input == input.upcase
      puts "NO, THIS IS NOT A PET STORE"
    end
    badconnection.listening
  end

end


badconnection = BadConnection.new
badconnection.greeting
badconnection.listening
badconnection.silence
badconnection.too_quiet
badconnection.end_of_call
badconnection.any_further_assistance
badconnection.hang_up
badconnection.missunderstood




# until ready_to_quit == true
# input = gets.chomp
#   if input.empty? == true
#     puts "HELLO!?"
#   elsif input == input.downcase
#     puts "I AM HAVING A HARD TIME HEARING YOU."
#   elsif goodbye == 1
#     puts "THANK YOU FOR CALLING!"
#     ready_to_quit = true
#   elsif input == "GOODBYE!"
#     puts "ANYTHING ELSE I CAN HELP WITH?"
#     goodbye += 1
#   elsif ready_to_quit == true
#     exit
#   else input == input.upcase
#     puts "NO, THIS IS NOT A PET STORE"
#   end

# end
