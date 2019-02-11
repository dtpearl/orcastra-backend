class Instance < ApplicationRecord
  belongs_to :deck, :optional => true
  has_many :rounds
end
