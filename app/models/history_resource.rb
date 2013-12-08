class HistoryResource < ActiveRecord::Base
  has_many :articles
  attr_accessor :history_resource_id, :article_id
  attr_accessible :description, :period_from, :period_to, :section, :area, :history_resource_id
  
  accepts_nested_attributes_for :articles
  
  

  
    SECTIONS = ["Irish", "European", "Appreciation"]

end
