class Response < ApplicationRecord
  belongs_to :deck
  has_many :burns
end
