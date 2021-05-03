class NorthStar < ApplicationRecord
  belongs_to :solar_system
  has_many :star_node
  has_one :data_source
end
