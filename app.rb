require 'sinatra/base'
require './lib/player'
require './lib/game'

# Acts as the controller for the battle app.
class Battle < Sinatra::Base
  enable :sessions


  get '/' do
    erb :index
  end

  post '/enter_names' do
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    Game.set_session(player1, player2)
    redirect '/names'
  end

  get '/names' do
    @game = Game.session
    @player1 = @game.player1.name
    @player2 = @game.player2.name
    erb :names
  end

  get '/attack' do
    @game = Game.session
    @game.attack
    erb :attack
  end

  get '/victory' do
    @game = Game.session
    @player1 = @game.player1.name
    @player2 = @game.player2.name
    erb :victory
  end

  run! if app_file == $PROGRAM_NAME
end
