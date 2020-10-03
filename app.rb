require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    user_word = params["user_phrase"]
    word = PigLatinizer.new
    @pig_latinized_word = word.piglatinize_word(user_word)

    erb :final_string
  end
end