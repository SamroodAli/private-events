require 'rails_helper'

RSpec.describe Ticket do
  fixtures :all

  subject(:ticket){Ticket.new(attendee_id:1,event_id:1)}
  let(:invalid_ticket){ Ticket.new}

    describe 'Validity with description, date and creator from fixtures' do
      it 'should be valid from fixtures' do
        expect(subject).to be_valid
      end
    end 

    describe :invalidity do
      it 'should not be valid with blank fields' do
        expect(invalid_event).not_to be_valid
      end
    end 

    describe "Creator must exist" do
      it 'No creator event must be invalid' do
        event = Event.new(date:DateTime.now.utc,description:"No creator")
        expect(event).not_to be_valid
      end
    end 

    describe "Date should exist" do
      it 'should not be valid with no date' do
        user = Event.new(description:"Hello world", creator_id:1)
        expect(invalid_event).not_to be_valid
      end
    end 
end


