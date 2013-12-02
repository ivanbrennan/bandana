class MusicianGenre < ActiveRecord::Base
  belongs_to :musician
  belongs_to :genre
end
