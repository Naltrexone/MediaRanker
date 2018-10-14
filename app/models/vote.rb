class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :work

  validates :user, uniqueness: { scope: [:work], message: 'You have already voted for this work!'}
end
