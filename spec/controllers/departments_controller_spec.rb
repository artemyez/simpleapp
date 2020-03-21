require 'rails_helper'

RSpec.describe DepartmentsController, type: :controller do
  it "create department name" do
    dep = Department.create(name: "Department #1")
    expect(dep.name).to eq("Department #1")
    dep.update(name: "Rename Department #1")
    expect(dep.name).to eq("Rename Department #1")
  end
end
