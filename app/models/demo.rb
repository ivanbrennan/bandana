class Demo < ActiveRecord::Base
  validates  :name,    presence: true
  validates  :band, presence: true

  belongs_to :band

  has_many   :demo_genres
  has_many   :genres, :through => :demo_genres
end
