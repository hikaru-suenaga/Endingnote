class AddGalleryToMylives < ActiveRecord::Migration[6.0]
  def change
    add_column :mylives, :gallery, :string
  end
end
