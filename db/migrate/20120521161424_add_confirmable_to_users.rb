class AddConfirmableToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
        ## Confirmable
        t.string   :confirmation_token, :after => :last_sign_in_ip
        t.datetime :confirmed_at, :after => :confirmation_token
        t.datetime :confirmation_sent_at, :after => :confirmed_at
        t.string   :unconfirmed_email, :after => :confirmation_sent_at # Only if using reconfirmable
    end    
  end
end
