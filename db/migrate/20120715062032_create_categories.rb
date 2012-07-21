class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.integer :categoryid
      t.integer :parentcategoryid

      t.timestamps
    end
  end
end
