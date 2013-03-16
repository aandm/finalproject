class User < ActiveRecord::Base
  attr_accessible :birthday, :email, :firstname, :lastname, :password, :username, :user_id

  has_secure_password
	
  validates_uniqueness_of :username
  validates_presence_of :firstname, :lastname, :password, :username, :email
  
  validates_email_format_of :email
  
  has_many :posts
  has_many :subscribers, :class_name => 'Subscriptions', :foreign_key => 'user_id'
  has_many :subscriptions, :class_name => 'Subscriptions', :foreign_key => 'subscriber_id'
  has_many :group_members, :through => :groups
  
end
