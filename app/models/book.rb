class Book < ActiveRecord::Base
  attr_accessible :category, :desc, :link, :picture, :price, :title, :vendor
  
    def self.search(search)
    if search
      where('title LIKE ?', "%#{search}%")
    else
      scoped
    end
  end 
end
