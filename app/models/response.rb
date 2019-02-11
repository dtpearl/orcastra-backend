class Response < ApplicationRecord
  belongs_to :deck, :optional => true
  has_many :burns
end
