class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :firstname
      t.string :lastname
      t.string :address1
      t.string :address2
      t.string :city
      t.string :mobile
      t.references :user

      t.timestamps
    end
    add_index :profiles, :user_id
  end
end
