class Teacher < SchoolUser
	has_many :schoolClasses
	has_many :students, :through => :schoolClasses
	
	def isTeacher?
		true
	end
	
	def isStudent?
		false
	end
end
