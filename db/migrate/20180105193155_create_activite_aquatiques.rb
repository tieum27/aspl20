class CreateActiviteAquatiques < ActiveRecord::Migration[5.1]
  def change
    create_table :activite_aquatiques do |t|
      t.string :nom
      t.string :jour
      t.string :debut
      t.string :fin
      t.references :equipement, foreign_key: true

      t.timestamps
    end
  end
end
