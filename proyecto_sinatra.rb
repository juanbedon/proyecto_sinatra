require 'sinatra'
require 'make_todo'

get "/" do
	@tareas = Tarea.all
	erb :index
end

post "/createtask" do
	@task = params[:task]
	task = Tarea.create(@task)

	redirect "/"
end

=begin

post "/completetask" do
	puts "Entró a completetask"
end

=end