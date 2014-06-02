class AssignmentsController < ApplicationController

	before_filter :authenticate_user!

	def index
		@locations = Location.all
	end

	def show
		# @new_comment = @assignment.comments.build		
		@user = current_user
		@assignment = Assignment.find(params[:id])
		@cohort = @assignment.cohort
		@location = @cohort.location
	end

	def edit
		@assignment = Assignment.find(params[:id])	
	end

	def update
		@assignment = Assignment.find(params[:id])
		if @assignment.update_attributes(assignment_params)
			redirect_to assignment_path
		else
			redirect_to edit_assignment_path
		end
	end

	private

	def assignment_params
		params.require(:assignment).permit(:name, :description, :due_date)
	end
	
end