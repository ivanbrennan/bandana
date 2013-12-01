class City < ActiveRecord::Base
  has_many :bands
  has_many :musicians
end
