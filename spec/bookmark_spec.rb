require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.skysports.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.skynews.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.deliveroo.com');")

      bookmarks = Bookmark.all

        expect(bookmarks).to include("http://www.skysports.com")
        expect(bookmarks).to include("http://www.skynews.com")
        expect(bookmarks).to include("http://www.deliveroo.com")
end
end
end
