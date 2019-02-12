class Burn < ApplicationRecord
  belongs_to :game, optional: true
  belongs_to :response, optional: true
  belongs_to :user, optional: true
  belongs_to :round, optional: true
end
