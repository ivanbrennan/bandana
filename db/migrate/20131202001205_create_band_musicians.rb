class CreateBandMusicians < ActiveRecord::Migration
  def change
    create_table :band_musicians do |t|
      t.references :band, index: true
      t.references :musician, index: true
    end
  end
end
