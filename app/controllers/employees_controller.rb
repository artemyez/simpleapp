class EmployeesController < ApplicationController
  before_action :find_employee, except: [:index, :new, :create]

  def index
    filtered = if params[:search].present?
                  Employee.search(params[:search])
              else
                  Employee.all
              end
    @pagy, @employees = pagy(filtered, items: 4)
  end

  def new; end

  def show; end

  def edit; end

  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      redirect_to employees_path
    else
      render 'new'
    end
  end

  def update
    @employee.update(employee_params)

    redirect_to employees_path
  end

  def destroy
    @employee.destroy

    redirect_to root_path
  end

  private

  def find_employee
    @employee = Employee.find(params[:id])
  end

  def employee_params
    params.require(:employee).permit(:name, :active, :department_id)
  end
end
