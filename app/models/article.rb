class Article < ActiveRecord::Base
  belongs_to :history_resources
  validates_presence_of :history_resource_id
  attr_accessor :history_resource_id
  attr_accessible :artist, :description, :image_url, :intro, :title,:history_resource_id, :history_resource_attributes, :history_resource
  
    accepts_nested_attributes_for :history_resources
end
