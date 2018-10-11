class Vote < ApplicationRecord
  belongs_to :user
 belongs_to :work

 validates :user_id, uniqueness: {
   scope: :work_id,
   :message => proc { |s| "has already voted for this work"}
 }

 def vote_date
   self.created_at.strftime("%B %-d, %Y")
 end
end
