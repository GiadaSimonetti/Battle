require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
     erb(:index)
  end

  post '/name' do
    session[:player_1_name] = params[:player_1]
    session[:player_2_name] = params[:player_2]
    redirect "/play"
  end

  get '/play' do
    @player_1 = session[:player_1_name]
  	@player_2 = session[:player_2_name]
    @health2 = 80
    erb(:play)
  end

  get '/attack' do
    @player_1 = session[:player_1_name]
  	@player_2 = session[:player_2_name]
    erb(:attack)
  end

  run! if app_file == $0
end
