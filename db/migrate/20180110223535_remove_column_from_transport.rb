class RemoveColumnFromTransport < ActiveRecord::Migration[5.1]
  def change
    remove_column :transports, :equipement_id
  end
end
