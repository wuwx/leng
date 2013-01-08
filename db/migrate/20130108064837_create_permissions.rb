class CreatePermissions < ActiveRecord::Migration
  def change
    create_table :permissions do |t|
      t.string :name
      t.string :resource
      t.string :action
      t.timestamps
    end
    
    create_table :permissions_roles, :id => false do |t|
      t.references :permission
      t.references :role
    end
  end
end
