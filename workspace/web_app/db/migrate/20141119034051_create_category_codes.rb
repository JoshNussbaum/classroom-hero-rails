class CreateCategoryCodes < ActiveRecord::Migration
  def change
    create_table :category_codes do |t|
      t.integer :code
      t.string :category
      t.integer :categoryType

      t.timestamps null: false
    end
  end
end
