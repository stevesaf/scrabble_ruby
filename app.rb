require('sinatra')
  require('sinatra/reloader')
  also_reload('lib/**/*.rb')
  require "./lib/scrabble"
  require "pry"

  get('/') do
    erb(:index)
  end

  get('/scrabble') do
      @scrabble = params.fetch('scrabble').scrabble()
      erb(:scrabble)
    end
