require "HTTParty"

class Client 
	def initialize(url) 
		@url = url
	end
	def request
		HTTParty.post(@url + "/joke", :body => {joke: "asdf"})
	end  
end 

client = Client.new("http://127.0.0.1:4567")
client.request