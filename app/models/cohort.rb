class Cohort < ActiveRecord::Base

	has_many :enrollments
	belongs_to :location
	has_many :users, through: :enrollments
	has_many :assignments

end