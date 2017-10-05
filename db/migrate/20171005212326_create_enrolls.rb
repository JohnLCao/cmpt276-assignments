class CreateEnrolls < ActiveRecord::Migration
  def change
    create_table :enrolls, id: false do |t|
      t.primary_key :course_id
      t.integer :percentage
      t.string :lettergrade

      t.timestamps null: false
    end
  end
end
