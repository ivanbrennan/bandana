class CreateMusicianInstruments < ActiveRecord::Migration
  def change
    create_table :musician_instruments do |t|
      t.references :musician, index: true
      t.references :instrument, index: true
    end
  end
end
