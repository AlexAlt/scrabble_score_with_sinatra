require('sinatra')
require('sinatra/reloader')
require('./lib/scrabble')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/scrabble') do
  @scrabble = params.fetch('scrabble_word').score()
  erb(:scrabble)
end
