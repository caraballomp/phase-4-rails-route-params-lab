class StudentsController < ApplicationController

  def index
    students = Student.all
    if params[:name]
      students = Student.where("lower(first_name) = ? or lower(last_name) = ?", params[:name].downcase, params[:name].downcase)
    
        render json: students
      else 
        render json: students
    end
  end

    def show
      student = Student.where(id: params[:id]).first
      render json: student
    end
end
