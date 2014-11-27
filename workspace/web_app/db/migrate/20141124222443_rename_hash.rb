class RenameHash < ActiveRecord::Migration
  def change
  	rename_column :users, :hash, :pass_hash
  end
end
