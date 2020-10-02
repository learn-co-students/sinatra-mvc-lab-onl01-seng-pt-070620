require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do 
        erb :user_input
    end

    post '/piglatinize' do 
        piglat = PigLatinizer.new 
        @piglatinized_text = piglat.piglatinize(params[:user_phrase])

        erb :piglatinize
    end


    



end