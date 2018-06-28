require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :players
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

  run! if app_file == $0
end
