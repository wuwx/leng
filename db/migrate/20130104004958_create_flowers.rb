class CreateFlowers < ActiveRecord::Migration
  def change
    create_table :flowers do |t|
      t.references :topic
      t.references :user
      t.timestamps
    end
  end
end
