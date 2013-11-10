class SchoolUser < ActiveRecord::Base
	has_secure_password
	attr_accessible :email, :password
	validates :password, :presence => true, :length => { minimum: 6}
end
