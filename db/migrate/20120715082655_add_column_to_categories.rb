class AddColumnToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :theme, :string
  end
end
