require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinized' do
        @word = params[:word]

        erb :final_string
    end
end