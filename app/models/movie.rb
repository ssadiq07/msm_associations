class Movie < ActiveRecord::Base

  validates :director_id, :presence => true
  validates :title, :presence => true, :uniqueness => {:scope => :year}
  validates :year, numericality: { only_integer:true ,:greater_than_or_equal_to => 1870, :less_than_or_equal_to => 2050}
  validates :duration, numericality: { only_integer:true ,:greater_than_or_equal_to => 0, :less_than_or_equal_to => 2764800}



      has_many :characters, :class_name => "Character", :foreign_key => "movie_id"
        has_many :actors, :class_name => "Actor", :foreign_key => "id"
belongs_to :director
end
