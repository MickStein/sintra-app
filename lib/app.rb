require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do 
  "hello world!"
end

get '/secret' do
  "Gdday matey"
end

get '/another' do
  "Another page?"
end

get '/lookyhere' do
  "Well well another page"
end

get '/random-cat' do
  @name = ["Amigo", "Misty", "Almond"].sample

  erb(:index)
end

get '/cat-form' do
  erb :cat_form
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end