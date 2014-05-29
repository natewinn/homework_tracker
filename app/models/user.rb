class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  mount_uploader :avatar, AvatarUploader

  devise :database_authenticatable, :registerable, :confirmable, 
  			 :recoverable, :rememberable, :trackable, :validatable

  has_many :comments
  has_many :assignments
  has_many :submissions
  has_many :cohorts, through: :enrollments
  
end