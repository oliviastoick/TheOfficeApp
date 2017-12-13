class CreateSiliconevalleys < ActiveRecord::Migration[5.1]
  def change
    create_table :siliconevalleys do |t|
      t.string :quote
      t.string :person
      t.string :season
      t.string :episode

      t.timestamps
    end
  end
end
