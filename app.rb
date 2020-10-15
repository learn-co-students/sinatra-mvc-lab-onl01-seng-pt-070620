require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do 
       erb :user_input  

    end 

    post '/piglatinize' do 
        text = PigLatinizer.new
        @text = text.piglatinize(params[:user_phrase])
            #         @text = PigLatinizer.piglatinize(params[:user_phrase]) if it were a class method 

        erb :results 
    end
end