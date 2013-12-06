class AddEmailToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :email, :string, :references => "users"
  end
end
