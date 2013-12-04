class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :title
      t.text :body
      t.references :user
      t.references :forum
      t.references :conversations

      t.timestamps
    end
    add_index :comments, :user_id
    add_index :comments, :forum_id
    add_index :comments, :conversations_id
  end
end
