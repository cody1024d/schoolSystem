class SchoolClass < ActiveRecord::Base
	attr_accessor :name
	belongs_to :teacher
	belongs_to :student
	has_many :assignments
end
