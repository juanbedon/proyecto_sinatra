require 'sinatra'
require 'make_todo'

get "/" do
	@tasks = Tarea.all

	erb :index
end

post "/createtask" do
	@tasks = params[:tasks]
	tasks = Tarea.create(@tasks)

	redirect "/"
end

patch "/updatetask/:id" do
	Tarea.update(params[:id])

	redirect "/"
end

delete "/deletetask/:id" do
	Tarea.destroy(params[:id])

	redirect "/"
end