require 'sinatra'

# get '/random-meme' do
#   @random_name = "#{['Raj', 'Howard', 'Penny', 'Sheldon', 'Leonard'].sample}"
#   erb(:index)
# end

get '/form-meme' do
  erb(:form_meme)
end

post '/named-meme' do
  p params
  @random_name = params[:name]
  erb(:index)
end