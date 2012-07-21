class Book < ActiveRecord::Base
  attr_accessible :author, :category, :description, :picture, :price, :publisher, :title, :vendor, :year, :link
  
  
      def self.search(search)
    if search
      search = search.downcase
      where('LOWER(title) LIKE ?', "%#{search}%")
    else
      scoped
    end
  end
  
  
end
