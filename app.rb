require('Sinatra')
require('Sinatra/Reloader')
require('./lib/scrabble.rb')
also_reload(./**/*.rb)

get('/') do
  erb(:index)
end
