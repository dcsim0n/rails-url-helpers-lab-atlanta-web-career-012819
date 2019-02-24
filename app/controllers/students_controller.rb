class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :active]
  
  def index
    @students = Student.all
  end

  def show
    

  end

  def active
    
  end
  def update
    # binding.pry
    @student = Student.find(update_params[:id])
    @student.update(active: update_params[:active])
    # @studens.update(update_params)
     render "show"

  end
  
  private

    def set_student
      @student = Student.find(params[:id])
    end
    def update_params
      params.permit(:id, :active)
    end

  
end