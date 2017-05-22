class Character < ActiveRecord::Base
  validates :movie_id, :presence => true
  validates :director_id, :presence => true
end
