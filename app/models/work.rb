class Work < ApplicationRecord
  # belongs_to :category
  #
  # has_many :votes
  #
  # validates :title, presence: true, uniqueness: true
  #
  # def self.top(num)
  #   self.most_voted[0..(num-1)]
  # end
  #
  # def self.most_voted
  #   self.all.sort_by{ |work| work.votes.count }.reverse
  # end
  #
  # def deactivate
  #   votes = Vote.all
  #   votes.each do |v|
  #     if self.id == v.work_id
  #       v.destroy
  #     end
  #   end
  # end
  CATEGORIES = ["movie", "album", "book"]
end
