class RenameColumnProducts < ActiveRecord::Migration[6.0]
  def change
    :decimal, precision: 5, scale: 2
  end
end
