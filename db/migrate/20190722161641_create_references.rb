class CreateReferences < ActiveRecord::Migration[5.2]
  def change
    create_table :references do |t|
      t.string :title
      t.string :authors
      t.text :description
      t.date :publication_date
      t.date :registered_date

      t.timestamps
    end
  end
end
