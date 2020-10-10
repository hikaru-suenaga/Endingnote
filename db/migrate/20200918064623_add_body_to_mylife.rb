class AddBodyToMylife < ActiveRecord::Migration[6.0]
  def change
    add_column :mylives, :profile, :text
    add_column :mylives, :family, :text
    add_column :mylives, :life, :text
    add_column :mylives, :todo, :text
    add_column :mylives, :memories, :text
    add_column :mylives, :gallery, :text

  end
end
