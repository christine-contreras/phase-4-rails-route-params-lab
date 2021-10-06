class StudentsController < ApplicationController

  def index
    students = if params[:name]
      Student.by_name(params[:name])
      else
        Student.all
      end
    render json: students
  end

  def grades 
    students = Student.all.order(grade: :desc)
    render json: students
  end

  def highest_grade
      student = Student.all.max_by {|student| student.grade}
      render json: student
  end

  def show
    student = Student.find_by_id(params[:id])
    render json: student
  end

end
