require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinizer' do
        pl = PigLatinizer.new
        @piglatinized_text = pl.piglatinize(params[:user_phrase])
        
        erb :piglatinizer
    end
end