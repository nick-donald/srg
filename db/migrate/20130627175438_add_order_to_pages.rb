class AddOrderToPages < ActiveRecord::Migration
  def change
  	add_column :pages, :page_order, :integer
  	add_index :pages, :page_order
  end
end
