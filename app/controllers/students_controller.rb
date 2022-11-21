class StudentsController < ApplicationController

    def index
    students = Student.all
    render json: students
    end

    def grades
    students = Student.all
    grades = students.order(:grade).reverse
    render json: grades
    end

    def highest_grade
        students = Student.all
        grades = students.order(:grade).reverse
        render json: grades.first
    end
end
