class CreateEquipements < ActiveRecord::Migration[5.1]
  def change
    create_table :equipements do |t|
      t.float :latitude
      t.float :longitude
      t.string :name
      t.string :adresse
      t.string :cp
      t.string :ville
      t.string :type_equipement

      t.timestamps
    end
  end
end
