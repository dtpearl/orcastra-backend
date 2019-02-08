class Deck < ApplicationRecord
  belongs_to :game
  has_many :instances
  has_many :responses
end
