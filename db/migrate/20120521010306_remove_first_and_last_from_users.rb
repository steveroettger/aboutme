class RemoveFirstAndLastFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :fname
    remove_column :users, :lname
  end
end
