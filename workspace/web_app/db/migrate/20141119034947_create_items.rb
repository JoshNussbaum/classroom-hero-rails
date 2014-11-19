class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :cost
      t.string :name
      t.integer :storeType
      t.integer :uid

      t.timestamps null: false
    end
  end
end
