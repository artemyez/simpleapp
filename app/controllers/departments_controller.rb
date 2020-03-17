class DepartmentsController < ApplicationController
  before_action :find_department

  def index
    @department = Department.all
  end

  def new
  end

  def show
  end

  def create
    # render plain: params[:banner].inspect
    @department = Department.new(department_params)
    if (@department.save)
      redirect_to employees_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @department.update(department_params)
    redirect_to departments_path
  end

  def destroy
    @department.destroy
    redirect_to departments_path
  end



private
  def find_department
    @department = Department.find(params[:id]) if params[:id]
  end

  def department_params
    params.require(:department).permit(:name)
  end

end
