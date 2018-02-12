module ApplicationHelper
  # Add active class to link according current_page url
  def active_class(link_path)
   current_page?(link_path) ? "active" : ""
  end

  # Return the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "Rmall"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
end
