class AddPricingToMenus < ActiveRecord::Migration[6.1]
  def change
    add_column :menus, :pricing, :integer
  end
end
