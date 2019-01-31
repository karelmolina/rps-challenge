require 'sinatra/base'

# control class
class Rps < Sinatra::Base

# set the directory fot the statcis files
  set :static, File.dirname(__FILE__) + '/static'

  get '/' do
    erb :index
  end

  run if app_file == $0
end
