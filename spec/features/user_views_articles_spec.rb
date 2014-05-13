require 'spec_helper'

feature 'User views articles' do
  scenario 'on the front page' do
    articles = create_list(:article, 10)
    # Article.create(title: 'Article1', url:'http://article1.com')
    # Article.create(title: 'Article2', url: 'http://article2.com')
    # Article.create(title: 'Article3', url: 'http://articl3.com')

    visit root_path

    articles.each do |article|
      within('tr', text: article.title) do
        expect(page).to have_content article.title
        expect(page).to have_content article.url
      end
    end
  end
end
