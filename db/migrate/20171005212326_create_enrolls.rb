class CreateEnrolls < ActiveRecord::Migration
  def change
    create_table :enrolls do |t|
      t.integer :percentage
      t.string :lettergrade

      t.timestamps null: false
    end
  end
end
