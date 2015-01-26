require("rspec")
require("pg")
require("employees")
require("divisions")

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM employee_tracker *;")
  end
end
