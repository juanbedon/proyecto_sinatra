require 'sinatra'
require 'make_todo'

get '/' do
	erb :index
end

get '/create_task' do
	@task = params[:task]
	if @task == @task
		task = <%= Tarea.create()%>
	end
    task
end