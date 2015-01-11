class ChangeUserTable < ActiveRecord::Migration
  def change
  	remove_column :users, :salt
  	rename_column :users, :pass_hash, :password_digest
  end
end
