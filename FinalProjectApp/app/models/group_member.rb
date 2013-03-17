class GroupMember < ActiveRecord::Base
  attr_accessible :group_id, :member_id
  
  belongs_to :group
  has_many :members, :class_name => 'User'
  
  before_create :check_if_already_member
  
  def check_if_already_member
  	@check = GroupMember.where(:group_id => self.group_id, :member_id => self.member_id).count
  	if @check.nil? || @check == 0
  		
  	else
  		return false
  	end
  end
end
