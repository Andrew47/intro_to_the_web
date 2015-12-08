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
  # Alternatively could put html in separate file: File.read('cat_html_file.html')
  erb(:index)
end

post '/named-cat' do
  p params
  # erb(:form)
  @name = params[:name]
  # Alternatively could put html in separate file: File.read('cat_html_file.html')
  erb(:index)
end

get '/form' do
  erb(:form)
end
