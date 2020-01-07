class StudentsController < ApplicationController
	def index
		@student =  Student.all
	end

   def new
   	@student = Student.new

   end

   def create
   	@student = Student.new(params[:student])
   	if @student.save 
   		redirect_to new_student_path
   	end
   end

  def destroy
    @student.destroy
    respond_to do |format|
      format.html { redirect_to cars_url, notice: 'Student id was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
end
