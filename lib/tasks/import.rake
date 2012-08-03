namespace :db do
  desc "load user data from csv"
  task :load_xml_file => :environment do
  
  require 'nokogiri'
  
  @doc = Nokogiri::XML(File.open(ENV['xml_file']))
  
  @doc.css('offer').each do |node|
    
    children = node.children
    
    linktoshop = children.css('url').inner_text
    
    linktoshop.gsub!("prt_xml_facet", "partner=clubjapaninfo")
    
    authorname = children.css('author') || "none"
    
    publishername = children.css('publisher') || "none"
    
    
    Book.create(
                :title => children.css('name').inner_text,
                :price => children.css('price').inner_text,
                :link => linktoshop,
                :description => children.css('description').inner_text,
                :picture => children.css('picture').inner_text,
                :vendor => children.css('vendor').inner_text,
                :category => children.css('categoryid').inner_text,
                :author => :authorname,
                :publisher => :publishername,
                :year => children.css('year')
                
                
                )
    end
  end
end 

namespace :db do
  desc "loading categories from xml_file"
  task :load_xml_category => :environment do
  
  require 'nokogiri'
  
  @doc = Nokogiri::XML(File.open(ENV['xml_file']))
  
  @doc.css('category').each do |node|
    
   children = node.children
   # parentidenv =  node['parentid'] 
     
   Category.create(
   
               :name => node.text,
               :categoryid => node['id'],
               :parentcategoryid => node['parentid']
               )
#    puts node.text
     end
  end
  
end

namespace :db do
  desc "load user data from csv"
  task :load_ebooks => :environment do
  require 'open-uri'
  require 'nokogiri'
  
  ebooks = "http://static.ozone.ru/multimedia/yml/facet/ebooks.xml"

  @doc = Nokogiri::XML(open(ebooks))
  
  @doc.css('offer').each do |node|
    
    children = node.children
    
    linktoshop = children.css('url').inner_text
    
    linktoshop.gsub!("prt_xml_facet", "partner=clubjapaninfo")
    
    authorname = children.css('author') || "none"
    
    publishername = children.css('publisher') || "none"
    
    
    Book.create(
                :title => children.css('name').inner_text,
                :price => children.css('price').inner_text,
                :link => linktoshop,
                :description => children.css('description').inner_text,
                :picture => children.css('picture').inner_text,
                :vendor => children.css('vendor').inner_text,
                :category => children.css('categoryid').inner_text,
                :author => :authorname,
                :publisher => :publishername,
                :year => children.css('year')
                
                
                )
    end
      puts "Loaded Ebooks"
end
end

namespace :db do
  desc "load user data from csv"
  task :load_ebooks_cat => :environment do
  require 'open-uri'
  require 'nokogiri'
  
  ebooks = "http://static.ozone.ru/multimedia/yml/facet/ebooks.xml"

  @doc = Nokogiri::XML(open(ebooks))

  
  @doc.css('category').each do |node|
    
   children = node.children
   # parentidenv =  node['parentid'] 
     
   Category.create(
   
               :name => node.text,
               :categoryid => node['id'],
               :parentcategoryid => node['parentid']
               )
#    puts node.text
     end
  puts "Categories loaded ebooks"
  end
end 

namespace :db do
  desc "load user data from csv"
  task :ebooks => [:load_ebooks, :load_ebooks_cat]  do
    puts "Ebooks are loaded"
  end
end

namespace :db do
  desc "load user data from csv"
  task :load_family => :environment do
  require 'open-uri'
  require 'nokogiri'
  
  ebooks = "http://static.ozone.ru/multimedia/yml/facet/family.xml"

  @doc = Nokogiri::XML(open(ebooks))
  
  @doc.css('offer').each do |node|
    
    children = node.children
    linktoshop = children.css('url').inner_text
    linktoshop.gsub!("prt_xml_facet", "partner=clubjapaninfo")
    authorname = children.css('author') || "none"
    publishername = children.css('publisher') || "none"
    
    
    Kidandparentbook.create(
                :title => children.css('name').inner_text,
                :price => children.css('price').inner_text,
                :link => linktoshop,
                :description => children.css('description').inner_text,
                :picture => children.css('picture').inner_text,
                :vendor => children.css('vendor').inner_text,
                :category => children.css('categoryid').inner_text,
                :author => :authorname,
                :publisher => :publishername
                
                )
    end
      puts "Family loaded"
end
end

namespace :db do
  desc "load user data from csv"
  task :load_family_cat => :environment do
  require 'open-uri'
  require 'nokogiri'
  
  ebooks = "http://static.ozone.ru/multimedia/yml/facet/family.xml"

  @doc = Nokogiri::XML(open(ebooks))

  @doc.css('category').each do |node|
    
   children = node.children
   # parentidenv =  node['parentid'] 
     
   Kidandparentcategory.create(
   
               :name => node.text,
               :categoryid => node['id'],
               :parentcategoryid => node['parentid']
               
               )
#    puts node.text
     end
  puts "Family categories loaded"
  end
end 

namespace :db do
  desc "load user data from csv"
  task :family => [:load_family, :load_family_cat]  do
    puts "Family categories and goods loaded"
  end
end

namespace :db do
  desc "load user data from csv"
  task :load_xml_file_family => :environment do
  require 'open-uri'
  require 'nokogiri'
  


  @doc = Nokogiri::XML(File.open(ENV['xml_file']))
  
  @doc.css('offer').each do |node|
    
    children = node.children
    
    linktoshop = children.css('url').inner_text
    
    linktoshop.gsub!("prt_xml_facet", "partner=clubjapaninfo")
    
    authorname = children.css('author') || "none"
    
    publishername = children.css('publisher') || "none"
    
    
    Kidandparentbook.create(
                :title => children.css('name').inner_text,
                :price => children.css('price').inner_text,
                :link => linktoshop,
                :description => children.css('description').inner_text,
                :picture => children.css('picture').inner_text,
                :vendor => children.css('vendor').inner_text,
                :category => children.css('categoryid').inner_text,
                :author => :authorname,
                :publisher => :publishername
                
                
                )
    end
      puts "Family loaded"
end
end

namespace :db do
  desc "load user data from csv"
  task :load_xml_file_family_cat => :environment do
  require 'open-uri'
  require 'nokogiri'
  
  @doc = Nokogiri::XML(File.open(ENV['xml_file']))

  
  @doc.css('category').each do |node|
    
   children = node.children
   # parentidenv =  node['parentid'] 
     
   Kidandparentcategory.create(
   
               :name => node.text,
               :categoryid => node['id'],
               :parentcategoryid => node['parentid']
               
               )
#    puts node.text
     end
  puts "Family categories loaded"
  end
end 

namespace :db do
  desc "load user data from csv"
  task :family_xml_file => [:load_xml_file_family, :load_xml_file_family_cat]  do
    puts "Family categories and goods loaded"
  end
end

namespace :db do
  desc "load user data from csv"
  task :load_xml_file_business => :environment do
  require 'open-uri'
  require 'nokogiri'
  


  @doc = Nokogiri::XML(File.open(ENV['xml_file']))
  
  @doc.css('offer').each do |node|
    
    children = node.children
    
    linktoshop = children.css('url').inner_text
    
    linktoshop.gsub!("prt_xml_facet", "partner=clubjapaninfo")
    
    authorname = children.css('author') || "none"
    
    publishername = children.css('publisher') || "none"
    
    
    Businessbook.create(
                :title => children.css('name').inner_text,
                :price => children.css('price').inner_text,
                :link => linktoshop,
                :description => children.css('description').inner_text,
                :picture => children.css('picture').inner_text,
                :vendor => children.css('vendor').inner_text,
                :category => children.css('categoryid').inner_text,
                :author => :authorname,
                :publisher => :publishername
                
                
                )
    end
      puts "Business loaded"
end
end

namespace :db do
  desc "load user data from csv"
  task :load_xml_file_business_cat => :environment do
  require 'open-uri'
  require 'nokogiri'
  
  @doc = Nokogiri::XML(File.open(ENV['xml_file']))

  
  @doc.css('category').each do |node|
    
   children = node.children
   # parentidenv =  node['parentid'] 
     
   Businesscategory.create(
   
               :name => node.text,
               :categoryid => node['id'],
               :parentcategoryid => node['parentid']
               
               )
#    puts node.text
     end
  puts "Business categories loaded"
  end
end 

namespace :db do
  desc "load user data from csv"
  task :business_xml_file => [:load_xml_file_business, :load_xml_file_business_cat]  do
    puts "Business categories and goods loaded"
  end
end

namespace :db do
  desc "load user data from csv"
  task :load_xml_file_booksale => :environment do
  require 'open-uri'
  require 'nokogiri'
  


  @doc = Nokogiri::XML(File.open(ENV['xml_file']))
  
  @doc.css('offer').each do |node|
    
    children = node.children
    
    linktoshop = children.css('url').inner_text
    
    linktoshop.gsub!("prt_xml_facet", "partner=clubjapaninfo")
    
    authorname = children.css('author') || "none"
    
    publishername = children.css('publisher') || "none"
    
    
    Booksale.create(
                :title => children.css('name').inner_text,
                :price => children.css('price').inner_text,
                :link => linktoshop,
                :description => children.css('description').inner_text,
                :picture => children.css('picture').inner_text,
                :vendor => children.css('vendor').inner_text,
                :category => children.css('categoryid').inner_text,
                :author => :authorname,
                :publisher => :publishername
                
                
                )
    end
      puts "booksale loaded"
end
end

namespace :db do
  desc "load user data from csv"
  task :load_xml_file_booksale_cat => :environment do
  require 'open-uri'
  require 'nokogiri'
  
  @doc = Nokogiri::XML(File.open(ENV['xml_file']))

  
  @doc.css('category').each do |node|
    
   children = node.children
   # parentidenv =  node['parentid'] 
     
   Booksalecategory.create(
   
               :name => node.text,
               :categoryid => node['id'],
               :parentcategoryid => node['parentid']
               
               )
#    puts node.text
     end
  puts "booksale categories loaded"
  end
end 

namespace :db do
  desc "load user data from csv"
  task :booksale_xml_file => [:load_xml_file_booksale, :load_xml_file_booksale_cat]  do
    puts "booksale categories and goods loaded"
  end
end

namespace :db do
  desc "load user data from csv"
  task :load_xml_file_educationliterature=> :environment do
  require 'open-uri'
  require 'nokogiri'
  


  @doc = Nokogiri::XML(File.open(ENV['xml_file']))
  
  @doc.css('offer').each do |node|
    
    children = node.children
    
    linktoshop = children.css('url').inner_text
    
    linktoshop.gsub!("prt_xml_facet", "partner=clubjapaninfo")
    
    authorname = children.css('author') || "none"
    
    publishername = children.css('publisher') || "none"
    
    
    Educationliterature.create(
                :title => children.css('name').inner_text,
                :price => children.css('price').inner_text,
                :link => linktoshop,
                :description => children.css('description').inner_text,
                :picture => children.css('picture').inner_text,
                :vendor => children.css('vendor').inner_text,
                :category => children.css('categoryid').inner_text,
                :author => :authorname,
                :publisher => :publishername
                
                
                )
    end
      puts "educationliterature loaded"
end
end

namespace :db do
  desc "load user data from csv"
  task :load_xml_file_educationliterature_cat => :environment do
  require 'open-uri'
  require 'nokogiri'
  
  @doc = Nokogiri::XML(File.open(ENV['xml_file']))

  
  @doc.css('category').each do |node|
    
   children = node.children
   # parentidenv =  node['parentid'] 
     
   Educationliteraturecategory.create(
   
               :name => node.text,
               :categoryid => node['id'],
               :parentcategoryid => node['parentid']
               
               )
#    puts node.text
     end
  puts "educationliterature categories loaded"
  end
end 

namespace :db do
  desc "load user data from csv"
  task :educationliterature_xml_file => [:load_xml_file_educationliterature, :load_xml_file_educationliterature_cat]  do
    puts "educationliterature categories and goods loaded"
  end
end

namespace :db do
  desc "load user data from csv"
  task :load_xml_file_nonfictionliterature=> :environment do
  require 'open-uri'
  require 'nokogiri'
  


  @doc = Nokogiri::XML(File.open(ENV['xml_file']))
  
  @doc.css('offer').each do |node|
    
    children = node.children
    
    linktoshop = children.css('url').inner_text
    
    linktoshop.gsub!("prt_xml_facet", "partner=clubjapaninfo")
    
    authorname = children.css('author') || "none"
    
    publishername = children.css('publisher') || "none"
    
    puts children.css('name').inner_text  
    Nonfictionliterature.create(
                :title => children.css('name').inner_text,
                :price => children.css('price').inner_text,
                :link => linktoshop,
                :description => children.css('description').inner_text,
                :picture => children.css('picture').inner_text,
                :vendor => children.css('vendor').inner_text,
                :category => children.css('categoryid').inner_text,
                :author => :authorname,
                :publisher => :publishername
                
                
                )
    end
      puts "nonfictionliterature loaded"
end
end

namespace :db do
  desc "load user data from csv"
  task :load_xml_file_nonfictionliterature_cat => :environment do
  require 'open-uri'
  require 'nokogiri'
  
  @doc = Nokogiri::XML(File.open(ENV['xml_file']))

  
  @doc.css('category').each do |node|
    
   children = node.children
   # parentidenv =  node['parentid'] 
     
   Nonfictionliteraturecategory.create(
   
               :name => node.text,
               :category => node['id'],
               :parentcategoryid => node['parentid']
               
               )
    puts node.text
     end
  puts "nonfictionliterature categories loaded"
  end
end 

namespace :db do
  desc "load user data from csv"
  task :nonfictionliterature_xml_file => [:load_xml_file_nonfictionliterature, :load_xml_file_nonfictionliterature_cat]  do
    puts "nonfictionliterature categories and goods loaded"
  end
end
