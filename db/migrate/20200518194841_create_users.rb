class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :user_name,  :null => false, :limit => 50
      t.string :email,      :null => false 
      t.string :password    :password
      t.string :password_confirmation :password

      t.timestamps
    end
  end
end
