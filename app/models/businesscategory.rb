class Businesscategory < ActiveRecord::Base
  attr_accessible :category, :name, :parentcategoryid
end
