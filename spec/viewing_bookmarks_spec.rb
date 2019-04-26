require 'spec_helper'

# As a time-pressed user
# So that I can quickly go to web sites I regularly visit
# I would like to see a list of bookmarks

feature 'Viewing bookmarks' do
  scenario 'visiting the index page' do
    visit('/')
    expect(page).to have_content "Bookmark Manager"
  end
end

feature 'viewing bookmarks' do
  scenario 'User can see bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks VALUES(1, 'http://www.skysports.com');")
    connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.skynews.com');")
    connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.deliveroo.com');")

    visit ('/bookmarks')
    expect(page).to have_content "http://www.skysports.com"
    expect(page).to have_content "http://www.skynews.com"
    expect(page).to have_content "http://www.deliveroo.com"
  end
end

feature 'adding bookmarks' do
  scenario 'can add a website to bookmarks' do
    visit ('/')
    fill_in :add_bookmark, with: 'Google'
    click_button "add"
    expect(page).to have_content "Google"
end
end
