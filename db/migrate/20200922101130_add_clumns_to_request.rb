class AddClumnsToRequest < ActiveRecord::Migration[6.0]
  def change
    
    add_column :requests, :illness, :text
    add_column :requests, :care, :text
    add_column :requests, :property, :text
    add_column :requests, :funeral, :text
    add_column :requests, :digital, :text

  end
end
