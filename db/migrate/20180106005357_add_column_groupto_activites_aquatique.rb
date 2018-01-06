class AddColumnGrouptoActivitesAquatique < ActiveRecord::Migration[5.1]
  def change
      add_column :activite_aquatiques, :group, :string
  end
end
