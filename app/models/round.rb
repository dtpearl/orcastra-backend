class Round < ApplicationRecord
  belongs_to :game, optional: true
  belongs_to :instance, optional: true
end
