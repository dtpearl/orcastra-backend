class Deck < ApplicationRecord
  belongs_to :game, :optional => true
  has_many :instances
  has_many :responses
end
