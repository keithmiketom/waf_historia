class Blog < ActiveRecord::Base
  attr_accessible :body, :title, :tag_list
  validates_presence_of :title, :body
  validates_uniqueness_of :title
  acts_as_taggable
  
    has_many :comments, :dependent => :destroy
end
