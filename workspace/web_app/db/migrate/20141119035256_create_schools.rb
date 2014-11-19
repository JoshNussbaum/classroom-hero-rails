class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :schoolName
      t.string :zip
      t.string :city
      t.string :state

      t.timestamps null: false
    end
  end
end
