require 'sinatra/base'
require './lib/player'

# Acts as the controller for the battle app.
class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/enter_names' do
    $player_1 = Player.new(params[:player1])
    $player_2 = Player.new(params[:player2])
    redirect '/names'
  end

  get '/names' do
    @player1 = $player_1.name
    @player2 = $player_2.name
    erb :names
  end

  get '/attack' do
    @player2 = $player_2.name
    $player_1.attack($player_2)
    @hitpoints = $player_2.hitpoints
    erb :attack
  end

  run! if app_file == $PROGRAM_NAME
end
