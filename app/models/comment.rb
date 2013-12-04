class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :forum
  belongs_to :conversations
  attr_accessible :body, :title
  
  accepts_nested_attributes_for :conversations, :forum
end
