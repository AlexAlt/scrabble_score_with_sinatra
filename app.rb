require('Sinatra')
require('Sinatra/Reloader')
require('./lib/scrabble.rb')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/scrabble')
  @scrabble = params.fetch('scrabble_word').score()
  erb(:scrabble)
end
