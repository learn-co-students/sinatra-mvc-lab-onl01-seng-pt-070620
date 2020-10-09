require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do 
    erb :user_input 
  end 

  post '/piglatinize' do 
    hog_wash = PigLatinizer.new
    @hog_talk = hog_wash.piglatinize(params[:user_phrase])
    erb :piglatinize
  end 

  


end