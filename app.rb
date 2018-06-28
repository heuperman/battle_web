require 'sinatra/base'

# Acts as the controller for the battle app.
class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/enter_names' do
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    redirect '/names'
  end

  get '/names' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb :names
  end

  get '/attack' do
    @player2 = session[:player2]
    erb :attack
  end

  run! if app_file == $PROGRAM_NAME
end
