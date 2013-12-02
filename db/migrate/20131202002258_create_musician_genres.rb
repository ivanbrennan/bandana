class CreateMusicianGenres < ActiveRecord::Migration
  def change
    create_table :musician_genres do |t|
      t.references :musician, index: true
      t.references :genre, index: true
    end
  end
end
