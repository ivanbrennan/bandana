class Genre < ActiveRecord::Base
  has_many :band_genres
  has_many :bands, :through => :band_genres

  has_many :demo_genres
  has_many :demos, :through => :demo_genres

  has_many :musician_genres
  has_many :musicians, :through => :musician_genres
end
