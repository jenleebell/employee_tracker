require('pg')
require('sinatra')
require('sinatra/reloader')
require("sinatra/activerecord")
require('./lib/division')
require('./lib/employee')
also_reload('lib/**/*.rb')
require 'pry'



get("/") do
  # @employee = Task.all()
	erb(:index)
end

get("/divisions") do
	@divisions = Division.all()
	erb(:divisions)
end

get("/divisions/new") do
	erb(:divisions_form)
end

post("/divisions") do
	name = params.fetch("name")
	division = Division.new({:name => name})
	division.save()
  @divisions = Division.all()
	erb(:divisions)
end

get("/clear") do
	Division.delete_all()
  @divisions = Division.all()
	erb(:index)
end

get("/divisions/:id") do
	@division = Division.find(params.fetch("id").to_i())
	erb(:division)
end

get("/employees/:id") do
	@division = params.fetch("id").to_i()
	erb(:employee_form)
end

post("/employees/:id") do
	name = params.fetch("name")
	division_id = params.fetch("id").to_i()
	@division = Division.find(division_id)
	@employee = Employee.new({:name => name, :division_id => division_id})
	@employee.save()
	erb(:division)
end
