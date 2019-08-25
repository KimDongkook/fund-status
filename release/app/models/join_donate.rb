class JoinDonate < ApplicationRecord
  belongs_to :donate
  belongs_to :fundraise
end
