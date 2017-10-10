class CreateEnrolls < ActiveRecord::Migration
  def change
    create_table :enrolls do |t|
      t.belongs_to :student
      t.belongs_to :course
      t.integer :percentage
      t.string :lettergrade

      t.timestamps null: false
    end
  end
end
