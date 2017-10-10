class Enroll < ActiveRecord::Base
	belongs_to :student
	belongs_to :course
	validates :student, presence: true
	validates :course, presence: true
	validates :student, uniqueness: {scope: :course}

	def course_name
		if self.persisted?
			return Course.find(self.course_id).course
		end
	end
end
