class AddIssnToPeriodics < ActiveRecord::Migration[5.2]
  def change
    add_column :periodics, :issn, :string
  end
end
