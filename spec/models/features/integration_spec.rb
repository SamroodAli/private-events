require 'rails_helper'

RSpec.describe 'Events Page', type: :system do
  fixtures :users

  describe 'Events page' do
    it 'shows past andupcoming events' do
      visit 'users/sign_in'
      fill_in :user_email,with: users(:samrood).email
      fill_in :user_password,with: :password
      click_button 'Log in'
      click_link 'Events'
      expect(page).to have_content('Upcoming events')
      expect(page).to have_content('Past events')
    end
  end
end
