require 'rails_helper'

RSpec.describe 'Hello world', type: :system do
  describe 'index page' do
    it 'shows the right content' do
      visist
      expect(page).to have_content('hello world')
    end
  end
end
