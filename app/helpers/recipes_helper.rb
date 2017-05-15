module RecipesHelper
  def youtube_embed youtube_url
    # if youtube_url[/youtube\.com\/([^\?]*)/]
    #   youtube_id = $1
    # else
    #   # Regex from # http://stackoverflow.com/questions/3452546/javascript-regex-how-to-get-youtube-video-id-from-url/4811367#4811367
    #   youtube_url[/^.*((v\/)|(embed\/)|(watch\?))\??v?=?([^\&\?]*).*/]
    #   youtube_id = $5
    # end
    youtube_id = (/([\w-]{11})/.match(youtube_url)).to_s


    html = "<iframe id='ytplayer' type='text/html' width='640' height='360' src='http://www.youtube.com/embed/#{youtube_id}?autoplay=1&origin=http://example.com' frameborder='0'/>"
    html.html_safe
  end
end
