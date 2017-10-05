class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students, id: false do |t|
      t.primary_key :student_id
      t.string :name
      t.string :email

      t.timestamps null: false
    end
  end
end
