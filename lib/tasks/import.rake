namespace :db do
  desc "load user data from csv"
  task [:load_xml_data] => [:environment] do
  
  require 'nokogiri'
  
  @doc = Nokogiri::XML(File.open(ENV['xml_file']))
  
  @doc.css('offer').each do |node|
    
    children = node.children
    
    linktoshop = children.css('url').inner_text
    
    linktoshop.gsub!("partner", "partner=clubjapaninfo&from=bar")
    
    Book.create(
                :title => children.css('name').inner_text,
                :price => children.css('price').inner_text,
                :link => linktoshop,
                :desc => children.css('name').inner_text,
                :picture => children.css('picture').inner_text,
                :vendor => children.css('vendor').inner_text,
                :category => children.css('categoryid').inner_text
                )

  end


   
  end
end