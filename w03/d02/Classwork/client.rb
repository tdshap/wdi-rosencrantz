require "socket"
require 'httparty'


# response = HTTParty.get('http://127.0.0.1:2000')

# puts response

server = TCPSocket.new '127.0.0.1', 2000
server.puts 'GET /?s=monkey'

response = server.gets
puts response

server.close
