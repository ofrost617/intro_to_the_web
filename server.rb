require 'socket'


server = TCPServer.new(2346)

loop do
  socket = server.accept

# socket.setsockopt(Socket::SOL_SOCKET, Socket::SO_KEEPALIVE, true)
  loop do
    socket.puts "What do you say?"

    they_said = socket.gets.chomp

    socket.puts "You said: #{they_said}. Goodbye!"
    
    break if they_said == "close"
  end

  socket.close
end
