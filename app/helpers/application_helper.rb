# encoding: utf-8
module ApplicationHelper
  
  def sortable(column, title = nil)
    
    title ||= column.titleize
    css_class = (column == sort_column) ? "#{sort_direction}" : nil
    direction = column == sort_column && sort_direction == "asc" ? "desc" :  "asc"
#    title = sort_direction == "asc" ?  title : title + "▲"
#    title = sort_direction == "desc" ? title : title + "▼"
    link_to title, params.merge(:sort => column, :direction => direction, :page => nil), {:class => css_class}
   
    
  end

  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "Search a book online service"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
end