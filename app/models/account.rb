class Account < ActiveRecord::Base
  attr_accessible :level, :name, :owner, :users_attributes

  has_many :users
  accepts_nested_attributes_for :users
  has_many :projects
  
end
