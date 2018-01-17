require 'sinatra/base'
require_relative './lib/player'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
     erb(:index)
  end

  post '/name' do
    session['player_1'] = Player.new(params[:player_1_name])
    session['player_2'] = Player.new(params[:player_2_name])
    redirect "/play"
  end

  get '/play' do
    @player_1 = session['player_1']
  	@player_2 = session['player_2']
    @hp_2 = 80
    erb(:play)
  end

  get '/attack' do
    @player_1 = session['player_1']
  	@player_2 = session['player_2']
    @hp_2 = 70
    erb(:attack)
  end

  run! if app_file == $0
end
