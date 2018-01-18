require 'sinatra/base'
require_relative './lib/player'
require 'pry'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
     erb(:index)
  end

  post '/name' do
    session['player_1'] = Player.new(params[:player_1_name])
    session['player_2'] = Player.new(params[:player_2_name])
    session['hit_points'] = Player.new(params[:hit_points])
    redirect "/play"
  end

  get '/play' do
    @player_1 = session['player_1']
  	@player_2 = session['player_2']
    @hit_points = session['hit_points']
    erb(:play)
  end

  get '/attack' do
    binding.pry
    @player_1 = session['player_1']
  	@player_2 = session['player_2']
    @hit_points = session['hit_points']
    Game.new.attack(@player_2)
    binding.pry
    erb(:attack)
  end

  run! if app_file == $0
end
