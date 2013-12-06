class AddPeriodToToHistoria < ActiveRecord::Migration
  def change
    add_column :historia, :period_to, :integer
  end
end
