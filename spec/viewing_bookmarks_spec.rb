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
    visit ('/bookmarks')
    expect(page).to have_content "http://www.skysports.com"
    expect(page).to have_content "http://www.skynews.com"
    expect(page).to have_content "http://www.deliveroo.com"
  end
end
