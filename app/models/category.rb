class Category < ActiveRecord::Base
  attr_accessible :categoryid, :name, :parentcategoryid, :theme
  
    def self.search(search)
    if search
      search = search.downcase
      where('LOWER(name) LIKE ?', "%#{search}%")
    else
      scoped
    end
  end
  
end
