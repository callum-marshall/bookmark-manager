require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base

get '/' do
  erb :homepage
end

post '/add' do
  Bookmark.add(params[:add_bookmark])
  redirect '/bookmarks'
end

get '/bookmarks' do
  @bookmarks = Bookmark.all
  erb:'bookmarks/index'
end

  run! if app_file == $0
end
