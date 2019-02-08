class Game < ApplicationRecord
  has_many :users
  has_many :rounds
  has_many :decks
  has_many :burns
end
