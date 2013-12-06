class Comment < ActiveRecord::Base
  belongs_to :blog
  attr_accessible :blog_id, :body, :email, :name
  validates_presence_of :name, :email, :body
end
