require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
   erb :players
  end

post '/names' do
  @player1 = params[:player1]
  @player2 = params[:player2]
  erb :names
end






  run! if app_file == $0
end
