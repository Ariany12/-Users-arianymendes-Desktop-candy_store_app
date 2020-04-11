class Addstufftomycandystore < ActiveRecord::Migration[6.0]
  def change
    rename_column :products, :price, :cost
  end
end
