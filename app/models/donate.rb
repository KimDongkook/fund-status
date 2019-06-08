class Donate < ApplicationRecord
  belongs_to :fundraise, :foreign_key => 'fundraise_id'
  has_one :direct_donate
  has_one :join_donate
end
