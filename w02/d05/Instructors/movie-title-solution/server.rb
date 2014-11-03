require 'json'
require 'socket'

server = TCPServer.new 2000

# equivalent to while true
loop do

  client = server.accept

  request = client.gets.chomp
  path = request.split(" ")[1]

  if path == "/"
    html = File.read('./views/index.html')
    client.puts(html)
  elsif path == "/styles.css"
    css = File.read('./stylesheets/styles.css')
    client.puts(css)
  elsif path.split('/')[1] == "words"
    word = path.split('/')[2]

    omdbapi = TCPSocket.new 'www.omdbapi.com', 80
    omdbapi.puts "GET /?s=#{word}"
    response = omdbapi.gets
    omdbapi.close
    parsed = JSON.parse(response)

<<<<<<< HEAD
    # parsed["Search"].each do |movie|
    #   html1 = File.read('./views/movies.html')
    #   html1 = html.gsub('{{search_word}}', word)
    #   end

    # parsed["Search"].each do |movie|
    #   html2 = File.read('./views/movies.html')
    #   html2 = html.gsub('{{title}}', movie["Title"])
    #   html2 = html.gsub('{{year}}', movie["Year"])
    #   html2 = html.gsub('{{imdb_id}}', movie["imdbID"])
    #   client.puts(html)
    # end
=======
    html = File.read('./views/movies.html')
    html = html.gsub('{{search_word}}', word)

    movies = []
    
    parsed["Search"].each do |movie|
      individual_movie = File.read('./views/individual_movie.html')
      individual_movie = individual_movie.gsub('{{title}}', movie["Title"])
      individual_movie = individual_movie.gsub('{{year}}', movie["Year"])
      individual_movie = individual_movie.gsub('{{imdb_id}}', movie["imdbID"])
      movies.push(individual_movie)
    end

    html = html.gsub('{{movies}}', movies.join(''))

    client.puts(html)
>>>>>>> 67d5ff5e9daa6c49b5b5e5973034bfffe45aaea7
  else
    html = File.read('./views/404.html')
    client.puts(html)
  end

  client.close

end