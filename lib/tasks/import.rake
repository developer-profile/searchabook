namespace :db do
  desc "load user data from csv"
  task :load_xml_file => :environment do
  
  require 'nokogiri'
  
  @doc = Nokogiri::XML(File.open(ENV['xml_file']))
  
  @doc.css('offer').each do |node|
    
    children = node.children
    
    linktoshop = children.css('url').inner_text
    
    linktoshop.gsub!("partner", "partner=clubjapaninfo&from=bar")
    
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
               :parentcategoryid => node['parentid'],
               :theme => ENV['xml_file']
               
               )
#    puts node.text
     end
  end
  
end
