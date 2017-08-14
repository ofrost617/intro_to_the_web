require 'sinatra'

get '/meme' do
  @random_name = "My name is #{['Raj', 'Howard', 'Penny', 'Sheldon', 'Leonard'].sample}"
  erb(:index)
end