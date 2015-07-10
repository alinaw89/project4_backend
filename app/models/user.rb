class User < ActiveRecord::Base
  has_many :memberships
  has_many :groups, through: :memberships
  # belongs_to :manager, :class_name => 'User'
  # has_many :employees, :class_name => 'User',  :foreign_key => :manager_id
  has_many :visits
end