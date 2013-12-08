class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :image_url
      t.string :artist
      t.text :intro
      t.text :description
      t.references :history_resource

      t.timestamps
    end
    add_index :articles, :history_resource_id
  end
end
