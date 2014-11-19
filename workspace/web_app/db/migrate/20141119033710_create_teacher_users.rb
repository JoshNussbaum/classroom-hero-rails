class CreateTeacherUsers < ActiveRecord::Migration
  def change
    create_table :teacher_users do |t|
      t.integer :coins
      t.integer :leagueId
      t.boolean :hasStamps

      t.timestamps null: false
    end
  end
end
