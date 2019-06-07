class Fundraise < ApplicationRecord
  has_many :donates, :foreign_key => 'fundraise_id'
  has_many :direct_donates, :foreign_key => 'fundraise_id'
  has_many :join_donates, :foreign_key => 'fundraise_id'
end
