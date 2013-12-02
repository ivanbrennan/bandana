class BandInstrument < ActiveRecord::Base
  belongs_to :band
  belongs_to :instrument
end
