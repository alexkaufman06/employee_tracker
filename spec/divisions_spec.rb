require("spec_helper")

describe(Division) do

  describe("#employees") do
    it('will add an employee to division') do
      employee1 = Employee.new({:name => "Bill"})
      employee1.save()
      employee2 = Employee.new({:name => "Bill"})
      employee2.save()
      division = Division.new({:name => "I hate my job"})
      division.save()
      division.add_employee(employee1)
      division.add_employee(employee2)
      expect(division.employees()).to(eq([employee1, employee2]))
    end
  end

end
