class Assignment < ActiveRecord::Base
	attr_accessor :title, :description, :active, :dueDate
	belongs_to :class
	after_initialize :init
	
	def init
		self.active = false if self.active.nil?
	end
end
