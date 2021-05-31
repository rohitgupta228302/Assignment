class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      #t.string :name
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at


      t.timestamps 
    end
  end
end
