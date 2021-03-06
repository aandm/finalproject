class Group < ActiveRecord::Base
  attr_accessible :group_name, :user_id
  
  has_many :group_members, :dependent => :destroy
  belongs_to :user
  has_many :users
  
  validates_presence_of :group_name, :user_id
  
  before_create :check_if_already_have_group

  
  def check_if_already_have_group
  	@check = Group.where(:user_id => self.user_id, :group_name => self.group_name).count
  	if @check.nil? || @check == 0

  	else
  		return false
  	end
  end
  
end
