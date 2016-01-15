require 'feedjira'

def select_feed(feed_position)
  @feedsites = 
  ["http://www.dailyclimate.org/feeds/main",
  "http://www.dailyclimate.org/feeds/topstories",
  "http://www.dailyclimate.org/feeds/editorials",
  "http://unfccc.int/tools_xml/calendar_rss.xml",
  "http://unfccc.int/tools_xml/headlines_rss.xml",
  "http://unfccc.int/tools_xml/docs_rss.xml",
  "http://unfccc.int/tools_xml/communications_rss.xml",
  "http://unfccc.int/press/press_releases_advisories/8780.xml",
  "https://unfccc.int/secretariat/employment/recruitment/rss",
  "http://www.unep.org/webservices/wsGetRSS.aspx?ws=news&TagsList=30",
  "http://www.unep.org/webservices/wsGetRSS.aspx?ws=news&TagsList=31",
  "http://www.unep.org/webservices/wsGetRSS.aspx?ws=news&TagsList=32",
  "http://www.unep.org/webservices/wsGetRSS.aspx?ws=news&TagsList=33",
  "http://www.unep.org/webservices/wsGetRSS.aspx?ws=news&TagsList=34",
  "http://www.unep.org/webservices/wsGetRSS.aspx?ws=news&TagsList=35",
  "http://feeds.nature.com/nclimate/rss/current",
  "http://www.skepticalscience.com/feed.xml",
  "http://yosemite.epa.gov/opa/admpress.nsf/RSS/climate?opendocument",
  "http://climate.nasa.gov/news/rss.xml",
  "http://www.yaleclimateconnections.org/feed/",
  "http://cakex.org/tools/feed",
  "http://www.iea.org/newsroomandevents/news.xml",
  "http://ian.umces.edu/enewsletter/enews.xml",
  "http://content.sierraclub.org/press-releases.xml",
  "http://tcktcktck.org/feed/"]

  @url = @feedsites[feed_position]
  @feed = Feedjira::Feed.fetch_and_parse @url
  return @feed
end