class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses, id: false do |t|
      t.primary_key :course_id
      t.string :description

      t.timestamps null: false
    end
  end
end
