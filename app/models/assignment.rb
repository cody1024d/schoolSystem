class Assignment < ActiveRecord::Base
	attr_accessor :title, :description, :active, :dueDate
	belongs_to :class
end
