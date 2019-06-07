class User < ApplicationRecord
  has_many :fundraises, :foreign_key => 'user_id'
end
