class Costbook < ActiveRecord::Base
  attr_accessible :division, :labor_cost, :material, :material_cost, :name

  has_many :materials
  belongs_to :account

end
