module ArticleHelper
  def article_cover url, options = {}
        html_class = options[:class]
        html_style = "background:url(#{url});"\
                    "height: 100%; background-position:center; background-size: cover;"
        html = "<div style='#{html_style}' class='#{html_class}'>"\
                "</div>"
        html.html_safe
    end
end
