class CreateStudentClassMatches < ActiveRecord::Migration
  def change
    create_table :student_class_matches do |t|
      t.integer :sid
      t.integer :cid

      t.timestamps null: false
    end
  end
end
