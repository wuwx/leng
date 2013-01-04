class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.text :content
      t.integer :comments_count, :default => 0
      t.integer :flowers_count, :default => 0
      t.references :user
      t.timestamps
    end
  end
end
