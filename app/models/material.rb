class Material < ActiveRecord::Base
  attr_accessible :beforeCostEquipment, :beforeCostLabor, :beforeCostMaterial, :beforeCostTotal, :crew, :description, :dialyOutput, :laborHours, :name, :overheadProfitTotal, :unit

  belongs_to :costbook
end
