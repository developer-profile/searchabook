class CreateBusinessbooks < ActiveRecord::Migration
  def change
    create_table :businessbooks do |t|
      t.string :title
      t.text :description
      t.string :link
      t.string :price
      t.string :publisher
      t.string :year
      t.string :vendor
      t.string :picture
      t.string :category
      t.string :author

      t.timestamps
    end
  end
end
