class AddingColumnCompletToActiviteAquatiques < ActiveRecord::Migration[5.1]
  def change
      add_column :activite_aquatiques, :complet, :boolean
  end
end
