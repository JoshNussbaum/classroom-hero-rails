class CreateLeagues < ActiveRecord::Migration
  def change
    create_table :leagues do |t|
      t.string :leagueName
      t.boolean :hasStamps
      t.integer :leagueAdmin
      t.string :leagueCode
      t.boolean :private

      t.timestamps null: false
    end
  end
end
