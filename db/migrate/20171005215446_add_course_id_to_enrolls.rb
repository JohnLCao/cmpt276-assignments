class AddCourseIdToEnrolls < ActiveRecord::Migration
  def change
  	  	add_column :enrolls, :course_id, :integer 
  end
end
