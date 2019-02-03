require 'sinatra/base'
require_relative 'lib/player.rb'
require_relative 'lib/game.rb'
require_relative 'lib/computer.rb'

 # control class
class Rps < Sinatra::Base

 # set the directory fot the statcis files
  set :static, File.dirname(__FILE__) + '/static'
  # the session is enable
  enable :sessions
 # enable static dir
  enable :static

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/game'
  end

  get '/game' do
    @player = Player.new(session)
    erb :game
  end

  post '/play' do
    session[:weapon] = params[:option]
    session[:computer_choice] = Computer.new.weapon
    redirect '/play'
  end

  get '/play' do
    @game = Game.new(session)
    erb :play
  end

  run if app_file == $0
end
