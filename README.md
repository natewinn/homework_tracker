# Student Homework Tracker
==========================

## Tables

**Cohort**
* name :string
* start_date :date
* end_date :date

**User**(student + teacher)
* first_name :string
* last_name :sting
* email_address :string
* password :string

**Enrollment**
* cohort_id :integer
* user_id :integer

**Assignment**(teacher)
* name :string
* description :text
* due_date :date
* cohort_id :integer

**Submission**(student)
* github :string
* heroku :string
* user_id (normal) :integer
* status (admin) :string
* assignment_id :integer

**Comment**
* content :text
* commentable_id :integer
* commentable_type :string
* user_id :integer
* (auto) :timestamp

## Associations

**Cohort**
* has_many :users, through: :enrollments 

**Enrollment**
* belongs_to :cohort
* belongs_to :user

**User**
* had_many :comments
* has_many :assignments
* has_many :submissions
* has_many :cohorts through :enrollments

**Assignment**
* belongs_to :cohort
* has_many :submissions

**Submission**
* belongs_to :user
* belongs_to :assignment

**Comments**
* belongs_to commentable, polymorphic: true
* belongs_to :user

## Stories

**User(student + teacher) registers for class**
* Authorization
* Location/cohort design (data)
* Authentication
* Registration -> association w/class cohort

**User(student) submits submission**
* Input form on specific assignment page
* Authorization
* Submitted and marked ‘new’

**User(teacher) submits assignment**
* Input form
* Authorization

**User(student + teacher) can add comments**
* User(teacher) comments on submission
	* Text form below submission
	* Authorization (teacher and student(who submitted))
* User(student + teacher) comments on assignment
	* Text form below assignment
	* Authorization

**User(teacher) changes status of submission**
* Authorization
* User(teacher) clicks on user(student) submission and is marked ‘in review’
* User(teacher) marks submission as ‘complete’ or ‘incomplete’

## Requirements

* User authentication
	* Normal User (students)
	* Admin User (instructors)
* Workflow for homework 
1. New
2. Reviewing
3. Complete
4. Incomplete
	* Checkout the workflow or state machine gems to help control homework "states" 
	* Homework assignments should be able to have many links
	* For example: I should be able to add a heroku link, a github link, and whatever else I want to add
	* Check out: http://railscasts.com/episodes/403-dynamic-forms
	* HW assignment should have a Description attribute
* Comment Stream
* Basic styling is fine for this, but you'll definitely want to go back later to make it look nicer because it'll be a great addition to your portfolio :)
* Deployed on Heroku (use postgres)
* Master branch on github stays CLEAN AND DEPLOYABLE at all times
