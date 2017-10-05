class AddStudentIdToEnrolls < ActiveRecord::Migration
  def change
  	add_column :enrolls, :student_id, :integer 
  end
end
