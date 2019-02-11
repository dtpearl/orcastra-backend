class Burn < ApplicationRecord
  belongs_to :game
  belongs_to :response
  belongs_to :user
end
