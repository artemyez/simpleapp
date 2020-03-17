class EmployeesController < ApplicationController
  before_action :find_employee

  def index
    @employee = Employee.all
  end

  def new
  end

  def show
  end

  def create
    # render plain: params[:banner].inspect
    @employee = Employee.new(employee_params)
    if (@employee.save)
      redirect_to employees_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @employee.update(employee_params)
    redirect_to employees_path
  end

  def destroy
    @employee.destroy
    #redirect_to employee_path
  end


  private
  def find_employee
    @employee = Employee.find(params[:id]) if params[:id]
  end

  def employee_params
    params.require(:employees).permit(:name, :active, :department_id)
  end



end
