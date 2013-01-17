class CreateOauthAccessTokens < ActiveRecord::Migration
  
  def change
    create_table :oauth_access_tokens do |t|
      t.integer  :resource_owner_id
      t.integer  :application_id,    :null => false
      t.string   :token,             :null => false
      t.string   :refresh_token
      t.integer  :expires_in
      t.datetime :revoked_at
      t.datetime :created_at,        :null => false
      t.string   :scopes
    end
  end
  
end
