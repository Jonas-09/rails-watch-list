class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie
  validates_length_of :comment, minimum: 5, allow_blank: false
  validates :movie_id, uniqueness: { scope: :list_id, message: "should be unique per list" }
end
