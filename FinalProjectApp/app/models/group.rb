class Group < ActiveRecord::Base
  attr_accessible :group_name, :user_id
  
  has_many :group_members
  belongs_to :user
  has_many :users
  
  before_create :check_if_already_have_group

  
  def check_if_already_have_group
  	@check = Group.where(:user_id => self.user_id, :group_name => self.group_name).count
  	if @check.nil? || @check == 0

  	else
  		return false
  	end
  end
  
end
