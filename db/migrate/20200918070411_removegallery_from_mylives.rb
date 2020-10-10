class RemovegalleryFromMylives < ActiveRecord::Migration[6.0]
  def change
    remove_column :mylives, :gallery, :text
  end
end
