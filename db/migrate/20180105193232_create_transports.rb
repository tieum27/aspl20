class CreateTransports < ActiveRecord::Migration[5.1]
  def change
    create_table :transports do |t|
      t.string :type_transport
      t.string :ligne
      t.string :arret
      t.references :equipement, foreign_key: true

      t.timestamps
    end
  end
end
