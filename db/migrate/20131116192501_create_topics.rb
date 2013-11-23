class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :area
      t.text :description
      t.string :image_url
      t.text :subarea

      t.timestamps
    end
  end
end
