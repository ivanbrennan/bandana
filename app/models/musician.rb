class Musician < ActiveRecord::Base
  has_many   :band_musicians
  has_many   :bands, :through => :band_musicians

  belongs_to :city

  has_many   :musician_genres
  has_many   :genres, :through => :musician_genres

  has_many   :musician_instruments
  has_many   :instruments, :through => :musician_instruments

  def demos
    all_demos = self.bands.map do |band|
      band.demos
    end
    all_demos.flatten
  end
end
