class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.integer :category
      t.string :title
      t.string :author
      t.string :picture
      t.text :description
      t.integer :year
      t.string :vendor
      t.string :publisher
      t.integer :price

      t.timestamps
    end
  end
end
