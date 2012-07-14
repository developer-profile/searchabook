class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.integer :price
      t.string :link
      t.text :desc
      t.string :picture
      t.string :vendor
      t.integer :category

      t.timestamps
    end
  end
end
