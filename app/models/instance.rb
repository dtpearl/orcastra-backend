class Instance < ApplicationRecord
  belongs_to :deck
  has_many :rounds
end
