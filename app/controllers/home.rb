require 'feedjira'

get '/' do
  erb :"/home"
end

get '/feed_list' do
  erb :"/feed_list",  layout: !request.xhr?
end

def get_feed
 @feed = Feedjira::Feed.fetch_and_parse('http://www.genericwebservice.com/feed')

 render :partial => 'feed_data', :locals => {:feed => @feed}
end
