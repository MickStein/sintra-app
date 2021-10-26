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

get '/cat' do
  erb(:index)
end