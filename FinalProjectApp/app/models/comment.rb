class Comment < ActiveRecord::Base
  attr_accessible :post_id, :text, :username

  validates_presence_of :text

  belongs_to :post
  
end
