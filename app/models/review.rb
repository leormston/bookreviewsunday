class Review < ApplicationRecord
  RATING_LIST  = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  REVIEW_CHOICE = ["Most Upvoted", "Least Upvoted", "Latest", "Oldest"]
end
