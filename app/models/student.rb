class Student < ActiveRecord::Base
	has_many :enrolls, dependent: :destroy
end
