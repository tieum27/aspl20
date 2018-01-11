class CreateTransportations < ActiveRecord::Migration[5.1]
  def change
    create_table :transportations do |t|
      t.references :equipement, foreign_key: true
      t.references :transports, foreign_key: true

      t.timestamps
    end
  end
end
