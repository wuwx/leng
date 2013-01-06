class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, :null => false
      t.string :email, :null => false, :default => ""
      t.string :password_digest, :null => false
      
      t.integer :comments_count, :default => 0
      t.integer :flowers_count, :default => 0
      t.integer :topics_count, :default => 0
      t.timestamps
    end
    
    add_index :users, :name, :unique => true
    add_index :users, :email, :unique => true
  end
end
