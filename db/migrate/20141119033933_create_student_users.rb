class CreateStudentUsers < ActiveRecord::Migration
  def change
    create_table :student_users do |t|
      t.integer :totalcoins
      t.integer :currentcoins
      t.integer :lvl
      t.integer :progress
      t.integer :lvlUpAmount

      t.timestamps null: false
    end
  end
end
