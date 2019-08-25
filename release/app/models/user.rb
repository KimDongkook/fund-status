class User < ApplicationRecord
  has_many :fundraises, -> { includes :donates, :direct_donates, :join_donates }
end
