class SubmissionsController < ApplicationController
	
		before_filter :authenticate_user!

	def new
		@new_submission = Submission.new
	end

	def show
		# @new_comment = @submission.comments.build
		@submission = Submission.find(params[:id])		
		@user = @submission.user
		@assignment = @submission.assignment		
	end

	def create
		@new_submission = Submission.new()
		if @new_submission.save
			redirect to submissions_path
		else
			redirect_to new_submission_path
		end
	end

	def edit
		@submission = Submission.find(params[:id])
		@assignment = @submission.assignment
	end

	def update
		@submission = Submission.find(params[:id])
		if @submission.update_attributes(submission_params)
			redirect_to submission_path
		else
			redirect_to edit_submission_path
		end
	end

	def destroy
	end

	private

	def submission_params
		params.require(:submission).permit(:heroku, :github)
	end
end       