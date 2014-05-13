require 'spec_helper'

feature 'User views articles' do
  scenario 'on the front page' do
    Article.create(title: 'Article1', url:'http://article1.com')
    Article.create(title: 'Article2', url: 'http://article2.com')
    Article.create(title: 'Article3', url: 'http://articl3.com')

    visit root_path

    expect(page).to have_content 'Article1'
    expect(page).to have_content 'Article2'
    expect(page).to have_content 'Article3'
  end
end
