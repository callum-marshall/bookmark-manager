require 'spec_helper'

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
