class Project < ActiveRecord::Base
  attr_accessible :address1, :address2, :bidDate, :contact, :name

  belongs_to :account
  has_many :takeoffs
  
end
