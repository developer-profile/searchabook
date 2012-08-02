class Nonfictionliterature < ActiveRecord::Base
  attr_accessible :author, :category, :description, :link, :picture, :price, :publisher, :title, :vendor, :year
  
      def self.search(search)
    if search
      search = search.downcase
      where('LOWER(title) LIKE ?', "%#{search}%")
    else
      scoped
    end
  end
  
end
