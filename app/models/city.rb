class City < ActiveRecord::Base
  validates :name, presence: true

  has_many  :bands
  has_many  :musicians
end
