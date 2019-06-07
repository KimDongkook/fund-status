class Donate < ApplicationRecord
  has_many :direct_donates, :foreign_key => 'donate_id'
  has_many :join_donates, :foreign_key => 'donate_id'
end
