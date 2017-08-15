require 'socket'

class Notelist

  def initialize
    @notes = []
    server = TCPServer.new(2345)
    @socket = server.accept
  end
  
  def create_note
    loop do 
    @socket.puts "Create note"
    they_said = @socket.gets.chomp
    @notes << they_said
    break if they_said == "close"
    end
  end

  def show_notes
    @notes
  end
  

  note1 = Notelist.new
  
  note1.create_note

  puts note1.show_notes
  
  @socket.close

end






# loop do


# they_said = socket.gets.chomp
# break if they_said == "close"
# socket.puts "You said: #{they_said}. Goodbye!"
# socket.puts "Keep me open!"
# end

# socket.close




# end
