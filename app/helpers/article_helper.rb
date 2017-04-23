module ArticleHelper
  def article_cover url, options = {}
        html_class = options[:class]
        html_style = "background:url(#{url});"\
                    "width: 100%; height: 300px; background-size: cover;"
        html = "<div style='#{html_style}' class='#{html_class}'>"\
                "</div>"
        html.html_safe
    end
end
