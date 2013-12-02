class AddBandRefToDemos < ActiveRecord::Migration
  def change
    add_reference :demos, :band, index: true
  end
end
