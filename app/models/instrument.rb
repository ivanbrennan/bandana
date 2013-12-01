class Instrument < ActiveRecord::Base
  has_many :band_instruments
  has_many :bands, :through => :band_instruments

  has_many :musician_instruments
  has_many :musicians, :through => :musician_instruments
end
