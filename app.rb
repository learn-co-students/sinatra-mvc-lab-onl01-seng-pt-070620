require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/' do
        @string = params[:user_phrase]
    
        @analyzed_text = PigLatinizer.new
        # binding.pry
        
        erb :piglatinize
    end

    post '/piglatinize' do
        @string = params[:user_phrase]
    
        @analyzed_text = PigLatinizer.new
        # binding.pry
        
        erb :piglatinize
    end

    




end