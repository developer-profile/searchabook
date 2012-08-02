class CreateNonfictionliteratures < ActiveRecord::Migration
  def change
    create_table :nonfictionliteratures do |t|
      t.string :title
      t.text :description
      t.string :link
      t.string :price
      t.string :publisher
      t.string :year
      t.string :vendor
      t.string :pict

      t.timestamps
    end
  end
end
