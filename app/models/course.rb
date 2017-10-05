class Course < ActiveRecord::Base
	has_many :enrolls
end
