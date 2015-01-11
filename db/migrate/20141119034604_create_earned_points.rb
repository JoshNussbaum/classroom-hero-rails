class CreateEarnedPoints < ActiveRecord::Migration
  def change
    create_table :earned_points do |t|
      t.integer :earnId
      t.integer :category_code
      t.string :earnTime

      t.timestamps null: false
    end
  end
end
