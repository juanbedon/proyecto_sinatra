require 'sinatra'
require 'make_todo'

enable :sessions

get '/' do
	erb :index
end

get '/login' do
	erb :login
end

get '/sign_up' do
	erb :sign_up
end