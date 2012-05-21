class AddFirstAndLastNameToUsers < ActiveRecord::Migration
  def change
     change_table :users do |t|
        t.string :fname, :null => false, :default => "", :after => :id
        t.string :lname,  :null => false, :default => "", :after => :fname
     end    
  end
end
