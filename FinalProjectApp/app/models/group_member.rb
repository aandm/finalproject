class GroupMember < ActiveRecord::Base
  attr_accessible :group_id, :member_id
  
  belongs_to :group
  has_many :users, :class_name => 'User', :foreign_key => :user_id
  
  before_create :check_if_already_member
  
  def check_if_already_member
  	@check = GroupMember.where(:group_id => self.group_id, :member_id => self.member_id).count
  	if @check.nil? || @check == 0
  		
  	else
  		return false
  	end
  end

end
