require('pg')
require('sinatra')
require('sinatra/reloader')
require("sinatra/activerecord")
require('./lib/division')
require('./lib/employee')
also_reload('lib/**/*.rb')
require 'pry'


##########################
####___Index-Entry___#####
##########################
get("/") do
	erb(:index)
end


##########################
##___Divisions-Entry___###
##########################
get("/divisions") do
	@divisions = Division.all()
	erb(:divisions)
end


##########################
###___Divisions-Form___###
##########################
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


##########################
######___Clear-All___#####
##########################
get("/clear") do
	Division.delete_all()
  @divisions = Division.all()
	erb(:index)
end


##########################
####___Division-Entry___##
##########################
get("/divisions/:division_id") do
	@division = Division.find(params.fetch("division_id").to_i())
	erb(:division)
end

delete '/divisions/:division_id/delete' do
	@division = Division.find(params['division_id'].to_i)
	@division.destroy
	@divisions = Division.all()
	erb(:divisions)
end

patch '/divisions/:division_id' do
	@division = Division.find(params['division_id'].to_i)
	@division.update({name: params['name']})
	@divisions = Division.all()
	erb(:divisions)
end


##########################
####___Employee-Form___###
##########################
get("/divisions/:division_id/new") do
	@division = params.fetch("division_id").to_i()
	erb(:employee_form)
end

post("/divisions/:division_id/employees") do
	name = params.fetch("name")
	@division_id = params.fetch("division_id").to_i()
	@division = Division.find(@division_id)
	@employee = Employee.new({:name => name, :division_id => @division_id})
	@employee.save()
	erb(:division)
end


##########################
####___Employee-Entry___##
##########################
get("/divisions/:division_id/employees/:id") do
	@division = Division.find(params.fetch("division_id").to_i())
	@employee = Employee.find(params.fetch("id").to_i())
	# binding.pry
	erb(:employee)
end

delete '/divisions/:division_id/employees/:id' do
	@division = Division.find(params.fetch("division_id").to_i())
	@employee = Employee.find(params['id'].to_i)
	@employee.destroy
	@employees = Employee.all()
	redirect "/divisions/#{@division.id()}"
end

patch '/divisions/:division_id/employees/:id' do
	@division = Division.find(params.fetch("division_id").to_i())
	@employee = Employee.find(params['id'].to_i)
	@employee.update({name: params['name']})
	@employees = Employee.all()
	redirect "/divisions/#{@division.id()}"
end
