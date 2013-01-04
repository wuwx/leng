class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.integer :comments_count, :default => 0
      t.integer :flowers_count, :default => 0
      t.integer :topics_count, :default => 0
      t.timestamps
    end
  end
end
