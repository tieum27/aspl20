class FixcolumnsNameInTransportations < ActiveRecord::Migration[5.1]
  def change
    rename_column :transportations, :transports_id, :transport_id
  end
end
