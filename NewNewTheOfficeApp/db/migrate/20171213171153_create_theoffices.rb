class CreateTheoffices < ActiveRecord::Migration[5.1]
  def change
    create_table :theoffices do |t|
      t.string :quote
      t.string :person
      t.string :season
      t.string :episode

      t.timestamps
    end
  end
end
