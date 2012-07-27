class CreateKidandparentcategories < ActiveRecord::Migration
  def change
    create_table :kidandparentcategories do |t|
      t.string :name
      t.string :categoryid
      t.string :parentcategoryid

      t.timestamps
    end
  end
end
