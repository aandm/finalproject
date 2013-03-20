class User < ActiveRecord::Base
  attr_accessible :birthday, :email, :firstname, :lastname, :password, :username, :user_id

  has_secure_password
	
  validates_uniqueness_of :username
  validates_presence_of :firstname, :lastname, :username, :email
  validates_presence_of :password, :on => :create
  
  validates_email_format_of :email
  
  has_many :posts
  has_many :subscribers, :class_name => 'Subscriptions', :foreign_key => 'user_id'
  has_many :subscriptions, :class_name => 'Subscriptions', :foreign_key => 'subscriber_id'
  belongs_to :group_members
  
end
