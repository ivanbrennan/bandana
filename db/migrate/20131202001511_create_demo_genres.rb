class CreateDemoGenres < ActiveRecord::Migration
  def change
    create_table :demo_genres do |t|
      t.references :demo, index: true
      t.references :genre, index: true
    end
  end
end
