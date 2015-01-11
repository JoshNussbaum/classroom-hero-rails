class CreateClassJars < ActiveRecord::Migration
  def change
    create_table :class_jars do |t|
      t.integer :total
      t.integer :progress
      t.string :name
      t.integer :type
      t.integer :uid

      t.timestamps null: false
    end
  end
end
