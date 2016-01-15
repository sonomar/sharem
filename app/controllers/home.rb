require 'feedjira'

get '/' do
  erb :"/home"
end

get '/dc_feed' do
  erb :"/dc_feed",  layout: !request.xhr?
end

get '/unfccc_feed' do
  erb :"/unfccc_feed",  layout: !request.xhr?
end

get '/unep_feed' do
  erb :"/unep_feed",  layout: !request.xhr?
end

get '/nature_feed' do
  erb :"/nature_feed",  layout: !request.xhr?
end

get '/skepsci_feed' do
  erb :"/skepsci_feed",  layout: !request.xhr?
end

get '/yosemite_feed' do
  erb :"/yosemite_feed",  layout: !request.xhr?
end

get '/nasa_feed' do
  erb :"/nasa_feed",  layout: !request.xhr?
end

get '/yale_feed' do
  erb :"/yale_feed",  layout: !request.xhr?
end

get '/cakex_feed' do
  erb :"/cakex_feed",  layout: !request.xhr?
end

get '/iea_feed' do
  erb :"/iea_feed",  layout: !request.xhr?
end

get '/umces_feed' do
  erb :"/umces_feed",  layout: !request.xhr?
end

get '/sierraclub_feed' do
  erb :"/sierraclub_feed",  layout: !request.xhr?
end

get '/tcktcktck_feed' do
  erb :"/tcktcktck_feed",  layout: !request.xhr?
end

def get_feed
 @feed = Feedjira::Feed.fetch_and_parse('http://www.genericwebservice.com/feed')

 render :partial => 'feed_data', :locals => {:feed => @feed}
end
