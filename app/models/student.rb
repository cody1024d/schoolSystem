class Student < SchoolUser
	has_one :schoolClass
	
	def isTeacher?
		false
	end
	
	def isStudent?
		true
	end
end
