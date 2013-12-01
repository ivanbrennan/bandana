class Band < ActiveRecord::Base
  belongs_to :city

  has_many   :demos

  has_many   :band_genres
  has_many   :genres, :through => :band_genres

  has_many   :band_instruments
  has_many   :instruments, :through => :band_instruments

  has_many   :band_musicians
  has_many   :musicians, :through => :band_musicians
end
