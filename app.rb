require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        phrase_from_user = params[:user_phrase]
        #@analyzed_text = TextAnalyzer.new(params[:user_text])  
    end
end