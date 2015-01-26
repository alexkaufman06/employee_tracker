require("spec_helper")

describe(Employee) do

  describe("#name") do
    it("lets you read the name of the employee") do
      test_employee = Employee.new({:name => "Joe"})
      expect(test_employee.name()).to(eq("Joe"))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Employee.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a employee to the array of saved employees") do
      test_employee = Employee.new({:name => "learn SQL"})
      test_employee.save()
      expect(Employee.all()).to(eq([test_employee]))
    end
  end

  describe("#==") do
    it("is the same employee if it has the same name and ID") do
      employee1 = Employee.new({:name => "Bob"})
      employee2 = Employee.new({:name => "Bob"})
      expect(employee1).to(eq(employee2))
    end
  end
end
