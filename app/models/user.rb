class User < ActiveRecord::Base
	#validate that a name is entered
	validates :name, :email, presence: true
	#validates if the email has a correct format
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
	#validate that passwords match and fields are not blank
	has_secure_password
	has_many :locations
end
