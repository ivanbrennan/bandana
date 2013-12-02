class AddCityRefToBands < ActiveRecord::Migration
  def change
    add_reference :bands, :city, index: true
  end
end
