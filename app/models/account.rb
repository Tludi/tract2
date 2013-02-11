class Account < ActiveRecord::Base
  attr_accessible :level, :name, :owner, :users_attributes

  has_many :users
  has_many :projects
  has_many :costbooks
  accepts_nested_attributes_for :users
  
end
