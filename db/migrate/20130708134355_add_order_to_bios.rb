class AddOrderToBios < ActiveRecord::Migration
  def change
  	add_column :bios, :bio_order, :integer
  	add_index :bios, :bio_order
  end
end
