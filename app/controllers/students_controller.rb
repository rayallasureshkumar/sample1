class StudentsController < ApplicationController
	def new
		@student = Student.new
	end
	def create
		@student = Student.new(params[:student])
		if @student.save
			redirect_to students_path
		else
			redirect_to new_student_path
		end

	end
	def index
		@students = Student.all
	end
end
