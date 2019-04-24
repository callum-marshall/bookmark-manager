require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      bookmarks = Bookmark.all
        expect(bookmarks).to include("http://www.skysports.com")
        expect(bookmarks).to include("http://www.skynews.com")
        expect(bookmarks).to include("http://www.deliveroo.com")
end
end
end
