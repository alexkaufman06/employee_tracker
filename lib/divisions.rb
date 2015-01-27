class Division <ActiveRecord::Base
  has_many(:employees)

  define_method(:add_employee) do |employee|
    employee.update({:division_id => self.id().to_i()})
  end
end
