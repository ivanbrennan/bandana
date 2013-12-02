class CreateBandInstruments < ActiveRecord::Migration
  def change
    create_table :band_instruments do |t|
      t.references :band, index: true
      t.references :instrument, index: true
    end
  end
end
