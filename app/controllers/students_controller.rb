class StudentsController < ApplicationController

  def index
    students = Student.all

    if params[:first_name]
      students = students.where(first_name: params[:first_name])
    end

    if params[:last_name]
      students = students.where(last_name: params[:last_name])
    end

    render json: students
  end

  def show
    student = Student.find_by(id: params[:id])
    render json: student
  end

end
