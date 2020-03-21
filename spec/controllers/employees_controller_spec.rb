require 'rails_helper'

RSpec.describe EmployeesController, type: :controller do
    it "create employee" do
      dep = Department.create(name: "New department 1")
      person = Employee.create(name: 'John', active: 'yes', department_id: dep.id)
      expect(person.name).to eq('John')
      expect(person.active).to eq('yes')
      expect(person.department_id).to eq(dep.id)
    end

    it "shouldn't save invalid data" do
      dep = Department.create(name: "New department 1")
      person = Employee.new(name: '', active: 'no', department_id: dep.id)
      expect(person.save).to eq(false)
    end
end
