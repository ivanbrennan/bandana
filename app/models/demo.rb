class Demo < ActiveRecord::Base
  belongs_to :band

  has_many   :demo_genres
  has_many   :genres, :through => :demo_genres
end
