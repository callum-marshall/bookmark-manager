require 'spec_helper'
require 'web_helpers'

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
    populate_test_database
    visit ('/bookmarks')
    expect(page).to have_content "http://www.skysports.com"
    expect(page).to have_content "http://www.skynews.com"
    expect(page).to have_content "http://www.deliveroo.com"
  end
end

# As a user
# So that I can bookmark new sites I like
# I would like to be able to add a bookmarks

feature 'adding bookmarks' do
  scenario 'can add a website to bookmarks' do
    visit ('/')
    fill_in :add_bookmark, with: 'https://www.bbc.co.uk/'
    click_button "add"
    expect(page).to have_content 'https://www.bbc.co.uk/'
  end
end
