class AssignmentsController < ApplicationController

	before_filter :authenticate_user!, :load

	def load
		@locations = Location.all
		@user = current_user
		@cohort = current_user.cohorts
		@current_cohort = @cohort.last
		# @location = @current_cohort.location
		@assignments = @current_cohort.assignments
	end

	def index
	end

	def new
		@assignments = Assignment.new
	end

	def show
	
	end

	def create
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private

	def assignment_params
		params.require(:user).permit(:name, :description, :due_date)
	end
	
end