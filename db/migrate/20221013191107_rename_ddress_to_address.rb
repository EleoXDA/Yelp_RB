class RenameDdressToAddress < ActiveRecord::Migration[7.0]
  def change
    rename_column :restaurants, :ddress, :address
  end
end
