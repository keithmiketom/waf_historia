class Conversation < ActiveRecord::Base
  has_many :comments
  belongs_to :forum
  belongs_to :user
  attr_accessible :body, :category, :title
  validates_presence_of :title
  

  
  accepts_nested_attributes_for :comment
end
