class CreateSoldItems < ActiveRecord::Migration
  def change
    create_table :sold_items do |t|
      t.integer :uid
      t.integer :iid
      t.string :tstamp

      t.timestamps null: false
    end
  end
end
