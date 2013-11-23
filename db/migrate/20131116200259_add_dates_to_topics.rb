class AddDatesToTopics < ActiveRecord::Migration
  def change
    add_column :topics, :date_from, :integer
    add_column :topics, :date_to, :integer
  end
end
