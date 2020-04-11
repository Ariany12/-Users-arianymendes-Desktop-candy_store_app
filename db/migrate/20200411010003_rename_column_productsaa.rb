class RenameColumnProductsaa < ActiveRecord::Migration[6.0]
  def change
    rename_column :products, :type, :flavor
  end
end
