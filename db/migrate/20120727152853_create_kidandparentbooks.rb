class CreateKidandparentbooks < ActiveRecord::Migration
  def change
    create_table :kidandparentbooks do |t|
      t.string :title
      t.integer :price
      t.string :link
      t.text :description
      t.string :picture
      t.string :vendor
      t.string :category
      t.string :author
      t.string :publisher
      t.string :year

      t.timestamps
    end
  end
end
