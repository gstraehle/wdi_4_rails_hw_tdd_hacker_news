require 'spec_helper'
feature 'User creates article' do
  scenario 'successfully' do
    visit root_path
    click_link 'New Article'
    fill_in 'Title', with: 'Title1'
    fill_in 'Url', with: 'http://url1.com'
    click_button 'Create Article'
  end
end


