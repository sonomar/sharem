require 'feedjira'

def select_feed(feed_position)
  @feedsites = ["http://www.dailyclimate.org/feeds/main", "http://www.dailyclimate.org/feeds/topstories", "http://www.dailyclimate.org/feeds/editorials"]
  @url = @feedsites[feed_position]
  @feed = Feedjira::Feed.fetch_and_parse @url
  return @feed
end