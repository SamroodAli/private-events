require 'rails_helper'

RSpec.describe 'Events Page', type: :system do
  describe 'Events page' do
    it 'shows past andupcoming events' do
      visit 'users/sign_in'
      fill_in :user_email, with: 'samrood@example.com'
      fill_in :user_password, with: :password
      click_button 'Log in'
      click_link 'Events'
      expect(page).to have_content('Upcoming events')
      expect(page).to have_content('Past events')
    end
  end

  describe 'Users page' do
    it 'should have upcoming and past events' do
      visit 'users/sign_in'
      fill_in :user_email, with: 'samrood@example.com'
      fill_in :user_password, with: :password
      click_button 'Log in'
      visit 'users/1'
      expect(page).to have_content 'Past event'
      expect(page).to have_content 'Present event'
      expect(page).to have_content 'Future event'
    end
  end

  describe 'New event' do
    it 'should be able to create new event' do
      visit 'users/sign_in'
      fill_in :user_email, with: 'samrood@example.com'
      fill_in :user_password, with: :password
      click_button 'Log in'
      visit 'events/new'
      fill_in :event_description, with: 'Hello world'
      fill_in :event_date, with: DateTime.now + 1.month
      click_button 'Submit'
      expect(page).to have_content 'Hello world'
    end
  end
end
