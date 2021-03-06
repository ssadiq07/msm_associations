class Actor < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => {:scope => :dob}

  has_many :characters, :class_name => "Character", :foreign_key => "actor_id"

  has_many :directors, :class_name => "Director", :foreign_key => "director_id"
  has_many :movies, :class_name => "Movie", :foreign_key => "director_id"


end
