require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        @string = params[:user_phrase]
        @pig = PigLatinizer.new

        erb :piglatinizer 
    end

end