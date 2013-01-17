class CreateOauthAccessGrants < ActiveRecord::Migration
  
  def change
    create_table :oauth_access_grants do |t|
      t.integer  :resource_owner_id, :null => false
      t.integer  :application_id,    :null => false
      t.string   :token,             :null => false
      t.integer  :expires_in,        :null => false
      t.string   :redirect_uri,      :null => false
      t.datetime :created_at,        :null => false
      t.datetime :revoked_at
      t.string   :scopes
    end
  end

end
