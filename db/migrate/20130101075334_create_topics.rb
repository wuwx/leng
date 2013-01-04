class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.text :content
      t.integer :flowers_count
      t.references :user
      t.timestamps
    end
  end
end
