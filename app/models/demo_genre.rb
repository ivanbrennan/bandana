class DemoGenre < ActiveRecord::Base
  belongs_to :demo
  belongs_to :genre
end
