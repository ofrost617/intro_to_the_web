require 'sinatra'

get '/random-meme' do
  @random_name = "#{['Raj', 'Howard', 'Penny', 'Sheldon', 'Leonard'].sample}"
  erb(:index)
end

get '/named-meme' do
  p params
  @random_name = params[:name]
  erb(:index)
end