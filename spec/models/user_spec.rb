require 'rails_helper'

RSpec.describe User do
  fixtures :users
  subject(:user){users(:samrood)}

    describe :validity do
      it 'should be valid' do
        puts user.valid?
        expect(user).to be_valid
      end
    end 
end


