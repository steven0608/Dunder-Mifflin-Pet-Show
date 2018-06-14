class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
  end
  
  def show
    @employee = Employee.find(params[:id])
  end

  def new
    @employee = Employee.new
    @dog_all = Dog.all
  end

  def create
    @employee = Employee.new(employee_params)
    
    if @employee.valid?
      @employee.save
      redirect_to @employee
    else
      render :new
    end
    
    
  end
  
  
  def edit
    @employee = Employee.find(params[:id])
  end
  

  def update
    
  end

  private

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :dog_id, :img_url)
  end
  
  
  
  
end
