class AddColumnsToProperty < ActiveRecord::Migration[6.0]
  def change
    add_column :Properties, :account, :text
    add_column :Properties, :balance, :integer
    add_column :Properties, :real_estate, :text
    add_column :Properties, :value, :integer
    add_column :Properties, :insurance, :text
    add_column :Properties, :insurance_proceeds, :integer
    add_column :Properties, :debt, :text
    add_column :Properties, :debt_amount, :integer
  end
end
