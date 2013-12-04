class CreateForums < ActiveRecord::Migration
  def change
    create_table :forums do |t|
      t.string :title
      t.text :body
      t.string :category
      t.references :user

      t.timestamps
    end
  end
end
