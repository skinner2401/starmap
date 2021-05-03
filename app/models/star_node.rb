class StarNode < ApplicationRecord
  has_one :data_source
  has_one :current_status
  has_many :blockers
  has_many :blocking
  has_many :next
  has_many :previous
end
