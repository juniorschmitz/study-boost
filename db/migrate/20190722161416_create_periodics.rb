class CreatePeriodics < ActiveRecord::Migration[5.2]
  def change
    create_table :periodics do |t|
      t.string :name
      t.text :description
      t.string :qualis
      t.string :knowledgement_area

      t.timestamps
    end
  end
end
