class Subscription < ActiveRecord::Base
  attr_accessible :subscriber_id, :user_id

  belongs_to :user
  belongs_to :subscriber, :class_name => 'User'
  
  validates_presence_of :subscriber_id, :user_id
  
  before_create :check_if_already_subscribed
  after_destroy :remove_from_groups
  
  def check_if_already_subscribed
  	@check = Subscription.where(:user_id => self.user_id, :subscriber_id => self.subscriber_id).count
  	if @check.nil? || @check == 0
  		
  	else
  		return false
  	end
  end
  
  def remove_from_groups
  	@groups = Group.where(:user_id => self.subscriber_id)
  	
  	@groups.each do |group|
  		@id = group.group_id
  		@list = GroupMember.where(:group_id => @id, :member_id => self.user_id)
  	end
  end
  	

end
