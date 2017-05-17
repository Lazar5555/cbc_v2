module RecipesHelper
  def youtube_embed youtube_url
    youtube_id = (/([\w-]{11})/.match(youtube_url)).to_s

    html = "<iframe id='ytplayer' type='text/html' width='640' height='360' src='http://www.youtube.com/embed/#{youtube_id}?autoplay=1&origin=http://example.com' frameborder='0'/>"
    html.html_safe
  end
end
