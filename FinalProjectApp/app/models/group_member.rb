class GroupMember < ActiveRecord::Base
  attr_accessible :group_id, :user_id
  
  belongs_to :group
  has_many :users
  
  before_create :check_if_already_member
  
  def check_if_already_member
  	@check = GroupMember.where(:group_id => self.group_id, :user_id => self.user_id).count
  	if @check.nil? || @check == 0
  		
  	else
  		return false
  	end
  end
end
