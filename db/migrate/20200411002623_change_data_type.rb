class ChangeDataType < ActiveRecord::Migration[6.0]
  def change
    remove_column :products, :cost,  :string
  end
end
