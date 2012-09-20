class Takeoff < ActiveRecord::Base
  attr_accessible :height, :item, :length, :level, :material, :project_id, :walltype

  belongs_to :project
end
