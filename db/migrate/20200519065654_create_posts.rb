class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.references :user, foreign_key: true
      t.string :title, :null => false
      t.text :body,    :null => false,  :limit => 10

      t.timestamps
    end
  end
end
