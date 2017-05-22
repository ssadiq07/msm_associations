class Character < ActiveRecord::Base
  validates :movie_id, :presence => true
  validates :actor_id, :presence => true

  belongs_to :actors, :class_name => "Actor", :primary_key => "actor_id"
  belongs_to :movies, :class_name => "Movie", :primary_key => "movie_id"

end
