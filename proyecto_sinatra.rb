require 'sinatra'
require 'make_todo'

get '/' do
	erb :index
end

post '/create_task' do
	@task = params[:task]
	if @task == @task
		task = Tarea.create(@task)
	end
    task
end