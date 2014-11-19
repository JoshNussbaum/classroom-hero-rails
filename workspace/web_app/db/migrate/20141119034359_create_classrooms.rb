class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.integer :grade
      t.integer :tid
      t.integer :room
      t.integer :classlvl
      t.integer :classProgress
      t.integer :nextLvl
      t.string :schoolName

      t.timestamps null: false
    end
  end
end
