class Group < ActiveRecord::Base
  attr_accessible :group_name, :user_id
  
  has_many :group_members
  belongs_to :user
end
