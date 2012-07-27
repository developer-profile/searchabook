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

