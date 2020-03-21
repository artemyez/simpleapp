class DepartmentsController < ApplicationController
  before_action :find_department, except: [:index, :new, :create]

  def index
    @departments = Department.all
  end

  def new; end

  def show; end

  def edit; end

  def create
    @department = Department.new(department_params)
    if @department.save
      redirect_to employees_path
    else
      redirect_to new_department_path, danger: "Such department already exist"
    end
  end

  def update
    if @department.update(department_params)
      redirect_to departments_path
    else
      redirect_to edit_department_path, danger: "Such department already exist"
    end
  end

  def destroy
    @department.destroy

    redirect_to departments_path
  end

  private

  def find_department
    @department = Department.find(params[:id])
  end

  def department_params
    params.require(:department).permit(:name)
  end
end
