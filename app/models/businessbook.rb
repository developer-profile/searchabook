class Businessbook < ActiveRecord::Base
  attr_accessible :author, :category, :description, :link, :picture, :price, :publisher, :title, :vendor, :year
end
