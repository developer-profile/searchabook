class CreateBusinesscategories < ActiveRecord::Migration
  def change
    create_table :businesscategories do |t|
      t.string :name
      t.string :category
      t.string :parentcategoryid

      t.timestamps
    end
  end
end
