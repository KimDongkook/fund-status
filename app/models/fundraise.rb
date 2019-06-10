class Fundraise < ApplicationRecord
  has_many :donates
  has_many :direct_donates, :foreign_key => 'fundraise_id'
  has_many :join_donates, :foreign_key => 'fundraise_id'
  belongs_to :user, :foreign_key => 'user_id'
end
