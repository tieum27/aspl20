class ChangeGroup < ActiveRecord::Migration[5.1]
  def change
      rename_column :activite_aquatiques, :group, :age_group
  end
end
