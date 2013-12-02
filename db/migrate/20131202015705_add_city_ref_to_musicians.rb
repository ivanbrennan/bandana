class AddCityRefToMusicians < ActiveRecord::Migration
  def change
    add_reference :musicians, :city, index: true
  end
end
