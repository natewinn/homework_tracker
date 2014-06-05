class AssignmentsController < ApplicationController

	before_filter :authenticate_user!

	def index
		@locations = Location.all
	end

	def show
		@assignment = Assignment.find(params[:id])
		@comment_list = @assignment.comments
		@cohort = @assignment.cohort
		@location = @cohort.location
		@comments = @assignment.comments.build		
		@current_user = current_user
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
		params.require(:assignment).permit!
	end
	
end