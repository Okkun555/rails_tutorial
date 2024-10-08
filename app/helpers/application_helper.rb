module ApplicationHelper
  # ページごとの完全なタイトルを返却
  def full_title(page_title = '')
    base_title = "Ruby on Rails Tutorial Sample App"
    if page_title.empty?
      return base_title
    end

    "#{page_title} | #{base_title}"
  end
end
