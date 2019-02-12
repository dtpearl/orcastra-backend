class Round < ApplicationRecord
  belongs_to :game, optional: true
  belongs_to :instance, optional: true
  has_many :burns
end
