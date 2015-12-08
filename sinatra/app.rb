require 'sinatra'

get '/' do
  "Hello World!"
end

get '/secret' do
  "sshh"
end

get '/shotgun_test' do
  "Working"
end

get '/random-cat' do
  @name = %w[Amigo Oscar Viking].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  @animal = params[:animal]
  erb(:index)
end

get '/form' do
  erb(:form)
end
