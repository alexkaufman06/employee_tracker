require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("sinatra/activerecord")
require("./lib/employees")
require("./lib/divisions")
require("pg")

get('/') do
  @employees = Employee.all()
  @divisions = Division.all()
  erb(:index)
end

post('/employees') do
  @employees = Employee.all()
  @divisions = Division.all()
  name = params.fetch('name')
  @employee = Employee.new({:name => name})
  @employee.save()
  erb(:index)
end

post('/divisions') do
  @employees = Employee.all()
  @divisions = Division.all()
  description = params.fetch('description')
  Division.new({:description => description}).save()
  erb(:index)
end

get("/divisions/:id") do
  @division = Division.find(params.fetch('id'))
  erb(:divisions)
end
