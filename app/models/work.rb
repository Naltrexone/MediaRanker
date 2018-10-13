class Work < ApplicationRecord
  has_many :votes

  WORK = ["movie", "book", "album"]
end
