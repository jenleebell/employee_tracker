require('pg')
require('sinatra')
require('sinatra/reloader')
require("sinatra/activerecord")
require('./lib/division')
require('./lib/employee')
also_reload('lib/**/*.rb')
require 'pry'



get("/") do
  # @tasks = Task.all()
	erb(:index)
end
