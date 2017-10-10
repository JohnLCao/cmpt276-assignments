class Student < ActiveRecord::Base
	has_many :enrolls, dependent: :delete_all
end
