class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.text :content
      t.integer :flowers_count, :default => 0
      t.references :user
      t.timestamps
    end
  end
end
