require 'sinatra/base'
require_relative 'lib/player.rb'

 # control class
class Rps < Sinatra::Base

 # set the directory fot the statcis files
  set :static, File.dirname(__FILE__) + '/static'
  # the session is enable
  enable :session
  before(:all) do
    @thing = Thing.new
  end

  get '/' do
    erb :index
  end

  post'/name' do
    session[:player_name] = params[:player_name]
    redirect '/game'
  end

  get '/game' do
    @player = Player.new(session)
    erb :game
  end

  run if app_file == $0
end
