require 'sinatra'
require 'make_todo'

get '/' do
	erb :index
end

get '/create_task' do
	erb :create_task
end

post '/create_task' do
	erb :index
end