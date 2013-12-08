class CreateHistoryResources < ActiveRecord::Migration
  def change
    create_table :history_resources do |t|
      t.string :section
      t.string :description
      t.string :period_from
      t.string :period_to
      
     t.string :area 
      
      t.timestamps
    end
  end
end
